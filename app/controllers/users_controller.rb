class UsersController < ApplicationController
  include SessionsHelper
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    new_user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
    @user=User.new(new_user)
    if @user.save
      @schedule = Schedule.create(availability: "", user_id: @user.id)
      flash[:success] = "Welcome to the Gym Buddy App!"
      sign_in @user
      redirect_to @user
      UserMailer.welcome_email(@user).deliver 
    else
      render'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    render :show
  end

  def join_gym
    gyms = Gym.all
    gym = gyms.find(params[:gym][:name])
    gym_id = gym.id
    current_user.update_columns(:gym_id => gym_id)
    redirect_to current_user
  end

end
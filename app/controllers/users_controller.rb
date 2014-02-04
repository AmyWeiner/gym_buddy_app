class UsersController < ApplicationController

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
      @gym = Gym.create(name: "", street: "", city: "", state: "", zip_code: "", user_id: @user.id)
      flash[:success] = "Welcome to the Gym Buddy App!"
      sign_in @user
      redirect_to @user
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

end
class GymsController < ApplicationController
  def index
  	@gym = Gym.new
  end

  def new
  	@gym = Gym.new
  end

  def show
  	@gym = Gym.find(params[:id])
    @user = @gym[:user_id]
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:id])
    @gym.update_attributes(params.require(:gym).permit(:name, :street, :city, :state, :zip_code))
    redirect_to @gym
  end
end

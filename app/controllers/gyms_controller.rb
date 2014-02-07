class GymsController < ApplicationController
  include SessionsHelper

  def add
    city = params[:city]
    state = params[:state]
    unless params[:city].nil? || params[:state].nil?
      # get all gyms based on city/state params
      @gyms_array_hashes = Gym.gyms_near(city, state)
    end
  end

  def new
  	@gym = Gym.new
  end

  def create
    new_gym = params.require(:gym).permit(:gym_id)
    gym_params = Gym.with_yelp_id(new_gym[:gym_id])
    #redirect_to @gym
    @gym=Gym.new(gym_params)
    if @gym.save
      redirect_to '/gyms/new'
    end
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

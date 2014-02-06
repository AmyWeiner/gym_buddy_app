class GymsController < ApplicationController
  

  def add
    city = params[:city]
    state = params[:state]
    @gyms = Gym.gyms_near(city, state)
    
    businesses = @gyms["businesses"]   

    @gyms_array_hashes = []
     businesses.each do |business|
      gym = {}
      gym[:name] = business["name"],
      gym[:street] = business["location"]["address"][0],
      gym[:city] = business["location"]["city"],
      gym[:state] = business["location"]["state_code"],
      gym[:zip_code] = business["location"]["postal_code"]
      @gyms_array_hashes.push(gym)
    end
    render 'add'
  end

  def new
  	@gym = Gym.new
  end

  def create

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

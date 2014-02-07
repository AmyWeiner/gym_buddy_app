class SchedulesController < ApplicationController
  include SessionsHelper
  def index
    @schedule = Schedule.new
  end

  def new
    @schedule = Schedule.new
  end

  def show
    @schedule = Schedule.find(params[:id])
    @user = @schedule[:user_id]
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    @schedule.update_attributes(params.require(:schedule).permit(:availability))
    redirect_to @schedule
  end
end

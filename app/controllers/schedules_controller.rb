class SchedulesController < ApplicationController
  def index
  end

  def new
  	@schedule = Schedule.new
  	@boats = Boat.all
  end

  def create
  	@schedule = Schedule.new(schedule_params)
    @schedule.job_id = params[:job_id]
    if @schedule.save
      redirect_to "/schedules/"
    else
      render "/schedules/new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
	def schedule_params
		params.require(:schedule).permit(:date,:origin,:destination,:boat_id,:job_id)
	end
end

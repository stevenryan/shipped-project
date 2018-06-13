class JobsController < ApplicationController
  def index
  	@job= Job.all
  end

  def new
  	@job = Job.new
  	@boats = Boat.all
  end

  def create
  	@job = Job.new(job_params)
    @job.user_id = current_user.id 
    if @job.save
      redirect_to "/"
    else
      render "/jobs/new"
    end
  end 

  def edit
  end

  def show
  end




  private
	def job_params
		params.require(:job).permit(:description,:cost,:containers_needed,:boat_id,:user_id)
	end
end

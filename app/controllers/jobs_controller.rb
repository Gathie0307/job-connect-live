class JobsController < ApplicationController
  def index
    if current_user.employer
      @jobs = Job.where(user: current_user)
    else
      @jobs = Job.all
    end
    if params[:query].present?
      @jobs = @jobs.where("job_title ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    if @job.save
      redirect_to job_path(@job)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @job = Job.find(params[:id])
    @favourite = Favourite.new
    @already_favourited = Favourite.where(job: @job, user: current_user).last
  end

  private

  def job_params
    params.require(:job).permit(:job_title, :company_name, :company_description, :company_size, :location, :salary)
  end
end

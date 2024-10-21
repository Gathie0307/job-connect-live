class JobsController < ApplicationController
  before_action :authenticate_user!
  # before_action :ensure_employer, only: [:new, :create]

  def index
    @jobs = Job.all

    if params[:query].present?
      @jobs = @jobs.where("job_title ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @user = current_user
    @job.user = @user

    if @job.save
      redirect_to @job, notice: "Job was successfully created."
    else
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:job_title, :company_name, :company_description, :company_size, :location, :job_description, :salary)
  end

  def ensure_employer
    redirect_to root_path, alert: "Only employers can create jobs." unless current_user.employer?
  end
end

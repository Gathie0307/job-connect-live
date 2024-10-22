class JobApplicationsController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.employer == true
      # @pending_applications = current_user.jobs.each { |job| job.job_applications.where(status: "pending", user: !current_user)}
      @pending_applications = current_user.job_applications.where(status: "pending")
      @confirmed_applications = current_user.job_applications.where(status: "confirmed")

    else
      @pending_applications = current_user.job_applications.where(status: "pending")
      @confirmed_applications = current_user.job_applications.where(status: "confirmed")
    end
  end

  # def new
  #   @job = Job.find(params[:id])
  #   @application = JobApplication.new
  # end

  def create
    @application = JobApplication.new(status: "pending")
    @application.user = current_user
    @job = Job.find(params[:job_id])
    @application.job = @job
    if @application.save
      redirect_to job_applications_path
    else
      render 'jobs/show', job: @job
    end
  end


  def show
    @job_application = JobApplication.find(params[:id])
    @job = @job_application.job
  end

  def edit
    @job_application = JobApplication.find(params[:id])
  end
end

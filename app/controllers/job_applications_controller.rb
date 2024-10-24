class JobApplicationsController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.employer == true
      # @pending_applications = current_user.jobs.map { |job| job.job_applications.select { |application| application.status == "pending" && application.user = !current_user}}
      # @confirmed_applications = current_user.jobs.map { |job| job.job_applications.select {|application |application.status == "confirmed" && application.user == !current_user}}
      apps = current_user.jobs.map {|job| job.job_applications.reject { |application| application.user == current_user}}.flatten
      @pending_applications = apps.select{|app| app.status == 'pending'}
      @confirmed_applications = apps.select{|app| app.status == 'confirmed'}
     # @pending_applications = current_user.job_applications.where(status: "pending")
     #@confirmed_applications = current_user.job_applications.where(status: "confirmed")
    else
      @pending_applications = current_user.job_applications.where(status: "pending")
      @confirmed_applications = current_user.job_applications.where(status: "confirmed")
    end
  end

  def new
    @job = Job.find(params[:id])
    @application = JobApplication.new
  end

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
    @message = Message.new
  end

  def edit
    @job_application = JobApplication.find(params[:id])

  end

  def update
    @job = JobApplication.find(params[:id])
    @job.update(job_params)
    redirect_to job_applications_path
  end
end

private

def job_params
  params.require(:job_application).permit(:status, :interview_outcome, :interview_date, :interview_completion)
end

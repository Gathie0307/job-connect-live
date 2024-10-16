class JobApplicationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @pending_applications = current_user.job_applications.where(status: "pending")
    @confirmed_applications = current_user.job_applications.where(status: "confirmed")
  end
end

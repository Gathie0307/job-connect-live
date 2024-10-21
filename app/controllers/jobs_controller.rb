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

  def show
    @job = Job.find(params[:id])
    @favourite = Favourite.new
    @already_favourited = Favourite.where(job: @job, user: current_user).last
  end
end

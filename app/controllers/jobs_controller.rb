class JobsController < ApplicationController
  def index
    @jobs = Job.all

  if params[:query].present?
    @jobs = @jobs.where("job_title ILIKE ?", "%#{params[:query]}%")
  end
  end

  def show
    @job = Job.find(params[:id])
    @favourite = Favourite.new
  end
end

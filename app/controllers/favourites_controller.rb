class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end
  def create
    @favourite = Favourite.new
    job = Job.find(params["job_id"])
    @favourite.job = job
    @favourite.user = current_user
    if @favourite.save
      redirect_to job_path(job)
    else
      render 'jobs/show'
    end
  end

  def destroy
    @favourite = Favourite.find(params["id"])
    @favourite.destroy
    redirect_to job_path(@favourite.job), notice: 'Job was removed from your Favourites.'
  end

  private
  def favourite_params
    params.require(:favourite).permit(:job_id)
  end
end

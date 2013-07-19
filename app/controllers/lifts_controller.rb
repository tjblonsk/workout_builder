class LiftsController < ApplicationController

  #Show all lift categories
  def index
    @lifts = Lift.all
    @lift = Lift.new
    @videos = Video.all

    # @videos = current_user.videos

  end

  #show all videos in a given category
  def show
    @lift = Lift.find(params[:id])
    @videos = Lift.find(params[:id]).videos
  end

  #show all videos
  def lifts_videos
    @videos = Video.all
    # @lifts = Lift.all
  end

  #need to create a new lift category
  def create
    @lift = Lift.new(params[:lift])
    @lift.save

    # current_user.lifts << lift
    redirect_to lifts_index_path
  end

  #delete a specific video from a lift
  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    redirect_to '/lifts', notice: "video deleted"
  end

end

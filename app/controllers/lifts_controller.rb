class LiftsController < ApplicationController

  def index
    @lifts = Lift.all
  end

  def show
    @lift = Lift.find(params[:id])
    @videos = Lift.find(params[:id]).videos

  end

  def lifts_videos
    @videos = Video.all
    # @lifts = Lift.all
  end

  def create
    #need to create a new lift category
    lift = Lift.new
    lift.name = params[:name]
    lift.save

    redirect_to lifts_index_path
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy

    redirect_to '/lifts', notice: "video deleted"
  end


end

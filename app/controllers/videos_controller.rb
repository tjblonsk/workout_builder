class VideosController < ApplicationController

  def index
  end


  def search
  end

  #show all the videos resulting from a search entered
  #in the search actions
  def videos
    @client = YouTubeIt::Client.new
    description = params[:description]
    @videos = @client.videos_by(:query => description)
    @lifts = Lift.all
  end


  def show
    #for testing
    #will actually be displayed in lifts#index.
    #I may not use this page but will add it
    # in the future when I can embed videos, add
    # favorite tag, and add workout tag.
    @saved_videos = Video.all
  end

  def new
  end

  #save a video to the database and add video to
  #a lift category
  def create
    video = Video.find_or_create_by_name(:name => params[:title], :url => params[:url], :description => params[:description], :lift_id => params[:lift])

    redirect_to '/lifts'
    #redirect_to '/lifts/#{video.lift_id}'
    end
  end

  #delete video
  # def destroy
  #   video = Video.find(params[:id])
  #   video.destroy
  #   redirect_to('/contacts')
  # end
# end

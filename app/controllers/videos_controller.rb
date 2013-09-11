class VideosController < ApplicationController

  def index
  end


  def search
  end

  #show all the videos resulting from a search entered
  #in the search actions
  def videos
    @client = YouTubeIt::Client.new
    @videos = @client.videos_by(:query => params[:description])
    @lifts = Lift.all
    @video = Video.new
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
    name = params[:name]
    description = params[:video][:description]
    url = params[:url]
    lift_id = params[:video][:lift_id]
    # video = Video.create(:name => params[:name], :url => params[:url], :description => params[:description], :lift_id => [params[:lift_id]])
    video = Video.new
    video.name = name
    video.description = description
    video.url = url
    video.lift_id = lift_id
    current_user.videos << video

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

class VideosController < ApplicationController

  def index
  end


  def search
  end


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

  def create
    url = params[:url]
    video = Video.new
    video.name = params[:title]
    video.url = params[:url]
    video.description = params[:description]
    video.lift_id = params[:lift]
    video.save

    redirect_to '/lifts'
  end

def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to('/contacts')
  end

end

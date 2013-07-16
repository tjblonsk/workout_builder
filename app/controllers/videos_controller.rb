class VideosController < ApplicationController

  def index
  end


def search
end


def videos
  @client = YouTubeIt::Client.new
  description = params[:description]
  @videos = @client.videos_by(:query => description)
end


def show
  #for testing
  #will actually be displayed in lifts#show
  @saved_videos = Video.all
end


def create
  url = params[:url]
  #using an instance variable so i can test this
  #in the views
  video = Video.new
  video.name = params[:title]
  video.url = params[:url]
  video.save
  #this is just to test if info is reaching
  #the database and will be changed
  redirect_to '/search/videos/show'
end


end

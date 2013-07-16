class VideosController < ApplicationController
  @client = YouTubeIt::Client.new

  def index
  end


def search
end


def videos
  description = params[:description]
  @videos = @client.videos_by(:query => description)
end


def show

  end


def create
  url = params[:url]
  @video = @client.videos_by(url)

end




end

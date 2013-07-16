YouTube::Application.routes.draw do

  get '/' => 'videos#index', as: :index

  get '/search' => 'videos#search', as: :search

  get '/search/videos' => 'videos#videos'

  get '/search/videos/show' => 'videos#show'

  post '/lifts/videos' => 'videos#create'

  ########LIFTS##########

  get '/lifts' => 'lifts#index'

  post '/lifts' => 'lifts#lifts_create'

  get '/lifts/videos' => 'lifts#lifts_videos'

  get '/lifts/videos/:id' => 'lifts#show'

  delete '/lifts/videos/:id' => 'lifts#destroy'

  #delete '/lifts' => 'lifts#destroy'

end


 # get '/books' => 'books#index'
 #  get '/books/new' => 'books#new'
 #  post '/books' => 'books#create'
 #  get '/books/:id' => 'books#show'
 #  put '/books/:id' => 'books#update'
 #  delete '/books/:id' => 'books#destroy'
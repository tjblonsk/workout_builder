YouTube::Application.routes.draw do

  get '/' => 'videos#index', as: :index

  get '/search' => 'videos#search', as: :search

  get '/search/videos' => 'videos#videos'

  post '/lifts/videos' => 'videos#create'

  ########LIFTS##########

  get '/lifts' => 'lifts#index', as: :lifts_index

  post '/lifts' => 'lifts#create'

  get '/lifts/videos' => 'lifts#lifts_videos'

  get '/lifts/:id' => 'lifts#show'

  #to delete a single video
  delete '/lifts/videos/:id' => 'lifts#destroy'

  #Will not allow users to delete entire categories
  # delete '/lifts/:id' => 'lifts#destroy'

  #########USERS#########

  get '/users' => 'users#index', as: :users_index

  post '/users' => 'users#create'

  get '/users/:id' => 'users#show'

  delete '/lifts/:id' => 'lifts#destroy'

end


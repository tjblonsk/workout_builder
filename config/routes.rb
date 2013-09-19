YouTube::Application.routes.draw do

  devise_for :users

  root :to => 'users#index', as: :index

  get '/profile' => 'users#profile', as: :profile

  get '/search' => 'videos#search', as: :search

  get '/search/videos' => 'videos#videos'

  post '/lifts/videos' => 'videos#create', as: :create

  ########LIFTS##########

  get '/lifts' => 'lifts#index', as: :lifts_index

  post '/lifts' => 'lifts#create', as: :videos

  get '/lifts/videos' => 'lifts#lifts_videos', as: :lifts_videos

  get '/lifts/:id' => 'lifts#show', as: :lifts_show

  #to delete a single video
  delete '/lifts/videos/:id' => 'lifts#destroy'

  #Will not allow users to delete entire categories
  # delete '/lifts/:id' => 'lifts#destroy'

  #########USERS#########

  get '/users' => 'users#index', as: :users_index

  post '/users' => 'users#create'

  # get '/users/:id' => 'users#show'

  get '/users/workouts/:id' => 'users#show_workouts'

  delete '/lifts/:id' => 'lifts#destroy'


  ######WORKOUTS######
  #show all workouts as a link
  get '/workouts' => 'workouts#index', as: :workouts_index

  get '/workouts/new' => 'workouts#new', as: :new_workout


  post '/workouts' => 'workouts#create', as: :workouts_create


  #show details of a specific workout
  get '/workouts/:id' => 'workouts#show'

  #to delete a single video
  #I'll come back to this
  #delete '/workouts/videos/:id' => 'lifts#destroy'

end

#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy


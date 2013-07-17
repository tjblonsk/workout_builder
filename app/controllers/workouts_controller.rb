class WorkoutsController < ApplicationController

  #show workout links/ create workout
  def index
    @workouts = Workout.all
  end

  #action for creating a new workout name, desc, and adding videos
  def new
    @workout = Workout.new
  end


  #create new workout
  def create
    workout = Workout.new
    workout.name = params[:name]
    workout.description = params[:description]
    workout.save

    redirect_to workouts_index_path
  end

  def show

  end

  def destroy
  end

end
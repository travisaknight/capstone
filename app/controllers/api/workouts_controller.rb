class Api::WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render "index.json.jb"
  end

  def create
    @workout = Workout.new(
      user_id: params[:user_id], #current_user.id
      exercise_id: params[:exercise_id],
      sets: params[:sets],
      reps: params[:reps],
    )
    @workout.save
    render "show.json.jb"
  end

  def update
    @workout = Workout.find_by(id: params[:id])
    @workout.exercise_id = params[:exercise_id] || @workout.exercise_id
    @workout.sets = params[:sets] || @workout.sets
    @workout.reps = params[:reps] || @workout.reps
    @workout.save

    render "show.json.jb"
  end

  def destroy
    @workout = Workout.find_by(id: params[:id])
    @workout.destroy
    render json: { message: "Exercise eliminated." }
  end
end

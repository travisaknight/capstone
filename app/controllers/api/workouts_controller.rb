class Api::WorkoutsController < ApplicationController
  before_action :authenticate_user

  def index
    @workouts = current_user.workouts
    render "index.json.jb"
  end

  def create
    @workout = Workout.new(
      user_id: current_user.id,
      exercise_id: params[:exercise_id],
      sets: params[:sets],
      reps: params[:reps],
      weight: params[:weight],
    )
    @workout.save
    render "show.json.jb"
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @workout = Workout.find_by(id: params[:id])
    @workout.sets = params[:sets] || @workout.sets
    @workout.reps = params[:reps] || @workout.reps
    @workout.weight = params[:weight] || @workout.weight
    if @workout.save
      render "show.json.jb"
    else
      render json: { error: @workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @workout = Workout.find_by(id: params[:id])
    @workout.destroy
    render json: { message: "Exercise eliminated." }
  end
end

class Api::CompletesController < ApplicationController
  before_action :authenticate_user

  def index
    @completes = Complete.all
    render "index.json.jb"
  end

  def create
    @complete = Complete.new(
      workout_id: params[:workout_id],
      sets: params[:sets],
      reps: params[:reps],
      weight: params[:weight],
    )
    if @complete.save
      render "show.json.jb"
    else
      render json: { error: @complete.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @complete = Complete.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @complete = Complete.find_by(id: params[:id])
    @complete.workout_id = params[:workout_id] || @complete.workout_id
    @complete.sets = params[:sets] || @complete.sets
    @complete.reps = params[:reps] || @complete.reps
    @complete.weight = params[:weight] || @complete.weight
    if @complete.save
      render "show.json.jb"
    else
      render json: { error: @workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @complete = Complete.find_by(id: params[:id])
    @complete.destroy
    render json: { message: "You deleted the exercise." }
  end
end

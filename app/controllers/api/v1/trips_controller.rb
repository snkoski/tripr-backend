class Api::V1::TripsController < ApplicationController
before_action :find_trip, only: [:update, :show]
  def index
    @trips = Trips.all
    render json: @trips
  end

  def show
    @trip
    render json: @trip
  end

  def create
    @trip = Trip.create(trip_params)
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_message }, status: :unprocessible_entity
  end

  def destroy
    @trips = Trips.all
    Trip.find(params[:id]).destroy
    # flash[:success] = "Trip deleted"
    render json: @trips
  end

  private

  def trip_params
    params.permit(:name, :start_date, :end_date, :destination_id)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end

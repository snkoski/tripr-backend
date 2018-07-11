class Api::V1::TripsController < ApplicationController
before_action :find_trip, only: [:update, :show, :destroy, :trip_activities]
  def index
    @trips = Trip.all
    render json: @trips
  end

  def show
    @trip
    render json: @trip
  end

  def create

    @trip = Trip.create(trip_params)
    UserTrip.create(user_id: params[:user_id], trip_id: @trip.id)
    render json: @trip
  end

  def update
    @trip.update(trip_params)
    if params[:activity_id].present?
      @trip.activities += Activity.where(id: params[:activity_id])
    end
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_message }, status: :unprocessible_entity
    end



    @venue.update_attributes(params[:venue_params])
    if params[:interest_ids].present?
       @venue.interests = Interest.where(id: params[:interest_ids])
       @venue.save
    end
  end

  def destroy
    @trips = Trips.all
    @trip.destroy
    # flash[:success] = "Trip deleted"
    render json: @trips
  end

  def trip_activities
    @trip
    render json: @trip.activities
  end


  private

  def trip_params
    params.permit(:name, :start_date, :end_date, :destination_id)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end

end

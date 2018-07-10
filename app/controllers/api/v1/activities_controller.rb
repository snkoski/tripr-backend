class Api::V1::ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :destination_activity]
    def index
      @activities = Activity.all
      render json: @activities
    end

    def show
      @activity
      render json: @activity
    end

    def destination_activity
      @activity
      @destination = Destination.find(params[:id])
      byebug
      if @destination.activities.include? @activity
        render json: @activity
      else
        render json: @destination
      end
    end

    private

    ### might need later, if we let users create activities
    # def activity_params
    #   params.permit(:name, :thumbnail, :description, :destination_id)
    # end

    def find_activity
      @activity = Activity.find(params[:id])
    end
end

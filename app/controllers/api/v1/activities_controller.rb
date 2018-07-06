class Api::V1::ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show]
    def index
      @activities = Activity.all
      render json: @activities
    end

    def show
      @activity
      render json: @activity
    end

    private

    def activity_params

    end

    def find_activity
      @activity = Activity.find(params[:id])
    end
end

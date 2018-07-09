class Api::V1::UsersController < ApplicationController
before_action :find_user, only: [:update, :show, :destroy]
  def index
    @users = Users.all
    render json: @trips
  end

  def show
    @user
    render json: @user
  end

  def create
    @user = User.create(user_params)
  end

  def update
    @user.udate(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_message }, status: :unprocessible_entity
  end

  def destroy
    @users = Users.all
    @user.destroy
    # flash[:success] = "User deleted"
    render json: @users
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end
end

class UsersController < ApplicationController

  def login
    logged_user = User.find_or_create_by(username: params[:username])
    render json: logged_user
  end

  def index
    users = User.all 
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

end

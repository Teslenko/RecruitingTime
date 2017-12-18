class UsersController < ApplicationController

  before_filter :authenticate_user!, except => [:show, :index]

  def index
    # do something
    @users = User.all
  end

  def show
    # do something
  end

  def create
    # do something
  end

  def set_user

    @user = User.find(params[:id])
  end

  def user_params
    # params.require(:user).permit(:name, :surname, :phone, :email, :balance, :added, :held)
  end
end

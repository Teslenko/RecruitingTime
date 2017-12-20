class UsersController < ApplicationController

  # before_action :authenticate_user!, :except => [:index]
  # before_action :set_listing, only: [:show, :edit, :update, :destroy]

  before_action :signed_in_user, only: [:edit, :update]

  def index
    # do something
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    # do something
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  # def create
  #   # do something
  # end

  def set_user

    @user = User.find(params[:id])
  end
  private

  def user_params

    # params.require(:user).permit(:name, :surname, :phone, :email, :balance, :added, :held)
  end
end

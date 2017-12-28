class UsersController < ApplicationController

  # before_action :authenticate_user!, :except => [:index]
  # before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # before_action :signed_in_user, only: [:edit, :update]
  before_filer :authenticate_user!
  skip_before_filer :authenticate_user!
  def index
    @sent_messages = current_user.sent_messages.all
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
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

  def login
    @user = User.find(params[:id])
  end

  def register
    @user = User.find(params[:id])
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

class PersonsController < ApplicationController

  before_filter :authenticate_user!, except => [:show, :index]

  def index
    # do something
  end

  def show
    # do something
  end

  def create
    # do something
  end

  def profile
  end
end

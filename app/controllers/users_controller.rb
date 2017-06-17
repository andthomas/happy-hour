class UsersController < ApplicationController
  def new
    @user = User.find params["id"]
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @users = User.all
  end

  def destroy
  end
end

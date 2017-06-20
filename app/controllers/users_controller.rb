class UsersController < ApplicationController
  def new
    @user = User.new
    session["rando"] = Random.rand 100000
  end

  def create
    @user = User.create user_params
    if @user.id.present?
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)   # /users/17
    else
      render :new
    end
  end

  def edit
    @user = User.find params["id"]
  end

  def update
    user = User.find params["id"]
    user.update user_params
    redirect_to user_path( params["id"] )
  end

  def show
    @user = User.find params["id"]
  end

  def index
    @users = User.all
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :dob, :email, :password, :password_confirmation)
  end

end

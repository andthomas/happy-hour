class UsersController < ApplicationController
  before_action :get_user, only: [ :show, :edit, :update ]


  def get_user
    @user = User.find params["id"]
  end


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

  def index
    @users = User.all
  end

  def show

    # catches URLS like /users/:id
    # @user = User.find params["id"]
  end

  def edit
    # @user = User.find params["id"]
    redirect_to root_path unless @current_user == @user
  end

  def update
    # user = User.find params["id"]
    redirect_to root_path unless @current_user == @user

    @user = @current_user # makes sure user can only access their own profile

    @user.update user_params
    redirect_to user_path( params["id"] )
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :dob, :email, :password, :password_confirmation)
  end



end

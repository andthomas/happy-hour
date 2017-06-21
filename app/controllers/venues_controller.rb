class VenuesController < ApplicationController

  before_action :fetch_user

  def new
    @venue = Venue.new
  end

  def create

    @venue = @current_user.venues.new venue_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      @venue.image = req['public_id']
    end

    :user == @current_user

    @venue.save

    redirect_to user_path( @current_user )
  end

  def edit
    @venue = Venue.find params["id"]
  end

  def update
    venue = Venue.find params["id"]
    venue.update venue_params
    redirect_to venue_path( params["id"] )
  end

  def show
     @venue = Venue.find params["id"]
  end

  def index
    @venues = Venue.all
    # raise 'hell'
  end

  def map
    @venues = Venue.all
  end

  def destroy
    @venue = Venue.find params["id"]
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :location, :category, :description, :image)
  end

  def fetch_user
     @current_user = User.find_by :id => session[:user_id] if
     session[:user_id].present?

    session[:user_id] = nil unless @current_user.present?
   end


end

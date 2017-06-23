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
     @hash = Gmaps4rails.build_markers(@venue) do |venue, marker|
       location_link = view_context.link_to venue.name, venue_path(venue.id)
       marker.lat venue.latitude
       marker.lng venue.longitude
       marker.json({:id => venue.id })
       marker.infowindow "<p><strong><u>#{location_link}</u></strong></p><p></p><p>#{venue.location}</p>"
     end
  end

  def index
    @venues = Venue.all
    # raise 'hell'
  end

  def map
    @venues = Venue.all
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      location_link = view_context.link_to venue.name, venue_path(venue.id)
      marker.lat venue.latitude
      marker.lng venue.longitude
      marker.json({:id => venue.id })
      marker.infowindow "<p><strong><u>#{location_link}</u></strong></p><p></p><p>#{venue.location}</p>"
    end
  end

  def destroy
    venue = Venue.find params[:id]
    venue.destroy
    redirect_to user_path(@current_user)
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :location, :category, :description, :image, :latitude, :longitude, )
  end

  def fetch_user
     @current_user = User.find_by :id => session[:user_id] if
     session[:user_id].present?

    session[:user_id] = nil unless @current_user.present?
   end


end

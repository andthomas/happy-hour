class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create venue_params
    redirect_to venue_path(@venue.id)
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

  def destroy
    @venue = Venue.find params["id"]
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :location, :category, :description, :image)
  end


end

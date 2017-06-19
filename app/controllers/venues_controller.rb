class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create venue_params
    redirect_to venue_path(@venue.id)
  end

  def edit
  end

  def update
  end

  def show
    @venues = Venue.all
  end

  def index

  end

  def destroy
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :location, :category, :description, :image)
  end


end

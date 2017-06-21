class HappyhoursController < ApplicationController
  def new
    @happy = Happyhour.new

  end

  def create
    @happy = Happyhour.create happyhour_params
    redirect_to venue_path(@happy.venue.id)
  end

  def edit
     @happy = Happyhour.find params["id"]
  end

  def update
    happy = Happyhour.find params["id"]
    happy.update happyhour_params
    redirect_to venue_path( happy.venue_id )
  end

  def show
     @happy = Happyhour.find params["id"]
  end

  def index
    @happy = Happyhour.all
  end

  def destroy
  end

  private
  def happyhour_params
    params.require(:happyhour).permit(:start, :end, :venue_id, :deal_id, :day)
  end

end

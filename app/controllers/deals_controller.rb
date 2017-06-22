class DealsController < ApplicationController
  def new
    @deal = Deal.new
  end

  def create

    @deal = Deal.create deal_params
    @happy = Happyhour.find( params[:deal][:happyhour_id] )
    @happy.deals << @deal


    redirect_to venue_path( @happy.venue.id )

  end

  def edit
     @deal = Deal.find params["id"]
  end

  def update
    deal = Deal.find params["id"]
    happy = Happyhour.find( deal.happyhour_id )
    deal.update deal_params
    redirect_to venue_path( happy.venue.id )
  end

  def show
     @deal = Deal.find params["id"]
  end

  def index
  end

  def destroy
    deal = Deal.find params[:id]
    deal.destroy
    redirect_to venues_path
  end


  private
  def deal_params
    params.require(:deal).permit(:drink, :price, :description)
  end

end

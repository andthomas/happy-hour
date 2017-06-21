class DealsController < ApplicationController
  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.create deal_params
    @happy = Happyhour.find( @deal.happyhour_id )

    # happyhour = Happyhour.where id: params[:deal][:happyhour_ids]
    # @deal.happyhours << happyhour

    deal = Deal.where id: params[:happyhour][:deal_ids]
    @happy.deals << deal

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
  end

  private
  def deal_params
    params.require(:deal).permit(:drink, :price, :happyhour_id, :description)
  end

end

class DealsController < ApplicationController
  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.create deal_params
    redirect_to deal_path(@deal.venue_id)
  end

  def edit
     @deal = Deal.find params["id"]
  end

  def update
    deal = Deal.find params["id"]
    deal.update deal_params
    # redirect_to venue_path( deal.happyhour.venue_id )
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

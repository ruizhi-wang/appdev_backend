class ListingsController < ApplicationController

  def index
    @listing = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def show
    @listing = Listing.find(params[:id])
  end

end

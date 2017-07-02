class ListingsController < ApplicationController

  def index
    @listing = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      flash[:success] = "Listing saved"
      redirect_to listings_path
    else
      render 'new'
    end
  end

  def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy
		redirect_to listings_path
		flash[:success] = "Item deleted"
	end

  def show
    @listing = Listing.find(params[:id])
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :location)
  end

end

class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(params[:venue])
    @venue.save
    redirect_to venue_path(@venue)
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venue_path(@venue), status: :see_other
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :description, :price, :contact_number, :rating, :user_id, :capacity)
  end
end

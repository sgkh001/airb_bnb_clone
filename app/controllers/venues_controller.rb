class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @venues = Venue.where(sql_query, query: "%#{params[:query]}%")
    else
      @venues = Venue.all
    end
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new, status: :unprocessable_entity
    end
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
    @review = Review.new
    @review.venue = @venue
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_path, status: :see_other
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :description, :price, :contact_number, :capacity)
  end
end

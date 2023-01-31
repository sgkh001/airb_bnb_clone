class ReviewsController < ApplicationController
  before_action :set_venue, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.venue = @venue
    @review.user = current_user
    @review.save
    if @review.save
      redirect_to venue_path(@venue)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to venue_path(@review.venue), status: :see_other
  end

  private

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end

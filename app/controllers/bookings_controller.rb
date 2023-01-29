class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new(booking_params)
    @booking.venue = @venue
    @booking.user = current_user
    if @booking.save!
      redirect_to bookings_path(@booking)
    else
      render "venues/show"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[id])
    @booking.destroy
    redirect_to booking_path(@booking), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time_frame, :number_of_guest)
  end
end

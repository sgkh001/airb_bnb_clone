class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    # to obtain the venue id in the url.
    # we need the @venue to indicate simple_form for which instance of venue we need to generate the booking form
    @venue = Venue.find(params[:venue_id])
    # to have an empty instance of the class bookind
    @booking = Booking.new
  end

  def create
    # fill in the booking form
    @booking = Booking.new(booking_params)
    # find the venue (venue_id) for which we are doing a booking
    @venue = Venue.find(params[:venue_id])
    # link the booking to the venue
    @booking.venue = @venue
    # link the booking to user
    @booking.user = current_user
    # save the bookings
    if @booking.save!
      # go back to all bookings for that venue
      redirect_to venues_path
    else
      render :new, status: :unprocessable_entity
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
    # find the booking
    @booking = Booking.find(params[:id])
    # find the venue for which we did a booking
  end

  def destroy
    # find the booking you want to delete by its id
    @booking = Booking.find(params[id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time_frame, :number_of_guest)
  end
end

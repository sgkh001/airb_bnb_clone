class AddBookingStatusToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :bookingstatus, :boolean
  end
end

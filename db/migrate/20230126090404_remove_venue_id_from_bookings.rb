class RemoveVenueIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :venue_id
  end
end

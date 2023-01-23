class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :venue_id
      t.integer :user_id
      t.date :date
      t.time :time_frame

      t.timestamps
    end
  end
end

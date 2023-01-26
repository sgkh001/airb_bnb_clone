class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :price
      t.integer :contact_number
      t.integer :rating
      t.integer :user_id
      t.integer :capacity

      t.timestamps
    end
  end
end

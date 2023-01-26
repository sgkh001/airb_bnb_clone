class RemoveUserIdFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :user_id
  end
end

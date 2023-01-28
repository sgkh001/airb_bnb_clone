class ChangeOwnerToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :owner, :boolean, default: false
  end
end

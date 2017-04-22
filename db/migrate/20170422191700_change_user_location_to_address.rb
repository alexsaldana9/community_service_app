class ChangeUserLocationToAddress < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :location, :street_address
  end
end

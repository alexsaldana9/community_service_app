class RenameLocationToStreetAddress < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :location, :street_address
  end
end


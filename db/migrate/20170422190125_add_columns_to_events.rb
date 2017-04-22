class AddColumnsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :city, :string
    add_column :events, :state, :string
    add_column :events, :zipcode, :integer
  end
end

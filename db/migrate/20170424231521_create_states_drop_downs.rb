class CreateStatesDropDowns < ActiveRecord::Migration[5.0]
  def change
    create_table :states_drop_downs do |t|

      t.timestamps
    end
  end
end

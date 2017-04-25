class Attendance < ActiveRecord::Migration[5.0]

  def self.up
    create_table :attendance, id: false do |t|
      t.column :event_id, :integer
      t.column :user_id, :integer
    end

    add_index(:attendances, [:user_id, :event_id], :unique => true)
  end

  def self.down
    remove_index(:attendances, [:user_id, :event_id])
    drop_table :attendances
  end
  def change
  end
end

class CreateEventsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :events_users do |t|
      t.column :event_id, :integer
      t.column :user_id, :integer
    end

    add_index(:events_users, [:user_id, :event_id], :unique => true)

    drop_table :event_users
  end
end

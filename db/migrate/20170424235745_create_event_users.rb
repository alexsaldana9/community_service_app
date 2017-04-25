class CreateEventUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_users do |t|
      t.column :event_id, :integer
      t.column :user_id, :integer
    end

      add_index(:event_users, [:user_id, :event_id], :unique => true)
  end
end

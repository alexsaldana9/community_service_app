class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end

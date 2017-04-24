class AddContentTypeColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :_content_type, :string
  end
end

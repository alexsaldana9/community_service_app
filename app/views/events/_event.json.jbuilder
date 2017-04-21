json.extract! event, :id, :name, :category_id, :user_id, :date, :location, :description, :created_at, :updated_at
json.url event_url(event, format: :json)

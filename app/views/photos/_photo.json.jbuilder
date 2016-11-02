json.extract! photo, :id, :restaurant_id, :photo, :created_at, :updated_at
json.url photo_url(photo, format: :json)
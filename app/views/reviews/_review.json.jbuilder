json.extract! review, :id, :restaurant_id, :review, :created_at, :updated_at
json.url review_url(review, format: :json)
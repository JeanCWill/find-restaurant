json.extract! restaurant, :id, :companyNmae, :description, :cnpj, :fantasyName, :latitude, :longitude, :city_id, :category_id, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
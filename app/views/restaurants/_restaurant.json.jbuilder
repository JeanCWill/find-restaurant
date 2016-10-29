json.extract! restaurant, :id, :companyNmae, :description, :cnpj, :fantasyName, :latitude, :longitude, :city_id, :category_id, :open_sun, :open_mon, :open_tues, :open_wed, :open_thurs, :open_fri, :open_sat
json.url restaurant_url(restaurant, format: :json)

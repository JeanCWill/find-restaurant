class Restaurant < ApplicationRecord
  has_one :city
  has_one :category
end

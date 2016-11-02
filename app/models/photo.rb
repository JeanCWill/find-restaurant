class Photo < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :photo, ImageUploader
end

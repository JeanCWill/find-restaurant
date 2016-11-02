class Menu < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :menu, ImageUploader
end

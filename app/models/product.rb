class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :price, :image, :description
  belongs_to :user
  belongs_to :category
  self.per_page = 6
end

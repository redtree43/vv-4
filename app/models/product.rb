class Product < ApplicationRecord
  include ImageUploader[:image]

  # belongs_to :user
  # validates :product_type, presence: true
  # validates :price, presence: true
  # validates :colour, presence: true
  # validates :size_on_product, presence: true
  # validates :size_standardised, presence: true
  # validates :brand, presence: true
  # validates :photo_1, presence: true
end

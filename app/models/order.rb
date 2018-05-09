class Order < ApplicationRecord
  belongs_to :seller, class_name: "User"
  belongs_to :product
end

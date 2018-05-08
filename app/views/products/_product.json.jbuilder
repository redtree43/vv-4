json.extract! product, :id, :user_id, :product_type, :year_of_manufacture, :price, :colour, :material, :size_on_product, :size_standardised, :brand, :photo_1, :photo_2, :created_at, :updated_at
json.url product_url(product, format: :json)

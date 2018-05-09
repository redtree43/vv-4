json.extract! order, :id, :buyer, :seller_id, :order_value, :order_date, :delivery_address, :product_id, :product_quantity, :product_price, :charge_identifier, :created_at, :updated_at
json.url order_url(order, format: :json)

class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :buyer
      t.references :seller, foreign_key: {to_table: :users}, index: true
      t.integer :order_value
      t.datetime :order_date
      t.string :delivery_address
      t.references :product, foreign_key: true
      t.integer :product_quantity
      t.integer :product_price
      t.string :charge_identifier

      t.timestamps
    end
  end
end

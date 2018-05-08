class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :product_type
      t.string :year_of_manufacture
      t.float :price
      t.string :colour
      t.string :material
      t.string :size_on_product
      t.string :size_standardised
      t.string :brand
      t.text :photo_1
      t.text :photo_2

      t.timestamps
    end
  end
end

class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :sex
      t.string :favourite_era
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      t.string :shoe_size
      t.integer :neck_inches
      t.integer :chest_inches
      t.integer :sleeve_length_inches
      t.integer :waist_inches
      t.integer :hips_inches
      t.integer :pants_inseam_inches
      t.integer :bust_inches
      t.string :bra_size

      t.timestamps
    end
  end
end

json.extract! profile, :id, :user_id, :first_name, :last_name, :dob, :sex, :favourite_era, :address_line_one, :address_line_two, :city, :state, :country, :postcode, :shoe_size, :neck_inches, :chest_inches, :sleeve_length_inches, :waist_inches, :hips_inches, :pants_inseam_inches, :bust_inches, :bra_size, :created_at, :updated_at, :profile_photo
json.url profile_url(profile, format: :json)

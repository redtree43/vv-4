class AddPhotoToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :profile_photo, :text
  end
end

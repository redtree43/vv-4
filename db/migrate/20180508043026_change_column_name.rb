class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    change_table  :products do |t|
      t.rename :photo_1, :image_data
    end
  end
end

class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.references :vehicle_listing, foreign_key: true
      t.string :image_data
      t.string :description

      t.timestamps
    end
  end
end
# class CreatePictures < ActiveRecord::Migration[5.0]
#   def change
#     create_table :pictures do |t|
#       t.references :vehicle_listing, foreign_key: true
#       t.string :pictures

#       t.timestamps
#     end
#   end
# end

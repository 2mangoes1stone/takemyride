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

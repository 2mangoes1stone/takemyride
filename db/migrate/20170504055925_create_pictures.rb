class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.references :vehicle_listing, foreign_key: true
      t.string :pictures

      t.timestamps
    end
  end
end

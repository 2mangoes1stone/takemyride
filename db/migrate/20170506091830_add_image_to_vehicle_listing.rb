class AddImageToVehicleListing < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicle_listings, :image, :string
  end
end

class RemoveImageFromVehicleListing < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicle_listings, :image, :decimal
  end
end

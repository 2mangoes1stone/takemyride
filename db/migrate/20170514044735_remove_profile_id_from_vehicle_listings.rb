class RemoveProfileIdFromVehicleListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicle_listings, :profile_id
  end
end

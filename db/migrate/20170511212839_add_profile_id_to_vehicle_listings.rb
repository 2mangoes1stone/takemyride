class AddProfileIdToVehicleListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicle_listings, :profile, foreign_key: true
  end
end

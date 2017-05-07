class RenameStartEndInVehicleListing < ActiveRecord::Migration[5.0]
  def change
    rename_column :vehicle_listings, :start_available_date, :start_date
    rename_column :vehicle_listings, :end_available_date, :end_date
  end
end

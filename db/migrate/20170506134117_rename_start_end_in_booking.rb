class RenameStartEndInBooking < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :start_rental_date, :start_date
    rename_column :bookings, :end_rental_date, :end_date
  end
end
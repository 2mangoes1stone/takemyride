class RemovePendingFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :paid, :boolean
  end
end

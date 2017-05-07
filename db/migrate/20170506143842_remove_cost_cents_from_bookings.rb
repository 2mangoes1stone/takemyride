class RemoveCostCentsFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :cost_cents, :decimal
  end
end

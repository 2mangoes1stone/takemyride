class ChangeStripeIdToString < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :stripe_charge_id, :integer
    add_column :bookings, :stripe_charge_id, :string
  end
end

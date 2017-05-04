class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :customer, foreign_key: { to_table: :users }
      t.references :vehicle_listing, foreign_key: true
      t.date :start_rental_date
      t.date :end_rental_date
      t.text :comments
      t.decimal :cost_cents
      t.integer :stripe_charge_id
      t.string :address
      t.string :city
      t.string :state
      t.string :country_code

      t.timestamps
    end
  end
end

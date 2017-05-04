class CreateVehicleListings < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_listings do |t|
      t.references :car_model, foreign_key: true
      t.references :owner, foreign_key: { to_table: :users }
      t.integer :make_year
      t.text :description
      t.integer :max_passengers
      t.date :start_available_date
      t.date :end_available_date
      t.integer :minimum_days_to_rent
      t.integer :price_per_day
      t.string :address
      t.string :city
      t.string :state
      t.string :country_code
      t.decimal :lat
      t.decimal :long
      t.text :instructions

      t.timestamps
    end
  end
end

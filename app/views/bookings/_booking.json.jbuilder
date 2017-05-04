json.extract! booking, :id, :owner_id, :vehicle_id, :start_rental_date, :end_rental_date, :comments, :cost_cents, :stripe_charge_id, :address, :city, :state, :country_code, :created_at, :updated_at
json.url booking_url(booking, format: :json)

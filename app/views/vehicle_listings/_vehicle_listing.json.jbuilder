json.extract! vehicle_listing, :id, :car_model_id, :user_id, :make_year, :description, :max_passengers, :start_available_date, :end_available_date, :minimum_days_to_rent, :price_per_day, :address, :city, :state, :countey_code, :lat, :long, :instructions, :created_at, :updated_at
json.url vehicle_listing_url(vehicle_listing, format: :json)

json.extract! photo, :id, :vehicle_listing, :image_data, :description, :created_at, :updated_at
json.url photo_url(photo, format: :json)

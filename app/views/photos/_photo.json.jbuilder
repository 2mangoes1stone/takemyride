json.extract! photo, :id, :vehicle_listing_id, :image, :created_at, :updated_at
json.url photo_url(photo, format: :json)

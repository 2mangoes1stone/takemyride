class Profile < ApplicationRecord
  has_many :vehicle_listings, dependent: :destroy
end

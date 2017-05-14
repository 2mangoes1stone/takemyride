class Profile < ApplicationRecord
  belongs_to :user
  has_many :vehicle_listings, dependent: :destroy
end

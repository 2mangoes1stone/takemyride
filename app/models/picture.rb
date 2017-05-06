class Picture < ApplicationRecord
  belongs_to :vehicle_listing, optional: true
end

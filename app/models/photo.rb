class Photo < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :vehicle_listing
  validates :description, presence: true
end

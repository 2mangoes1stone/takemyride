class Photo < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :vehicle_listing
  validates :name, presence: true
end

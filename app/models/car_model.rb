class CarModel < ApplicationRecord

  belongs_to :car_make
  has_many :vehicle_listings,  dependent: :destroy

  
end

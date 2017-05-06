class VehicleListing < ApplicationRecord
  belongs_to :car_model
  belongs_to :owner, class_name: 'User'

  has_many :bookings, dependent: :destroy
  has_many :pictures, dependent: :destroy

  def full_address
    [address, city, state].compact.join(', ')
  end

  def country
    ISO3166::Country.new(country_code)
  end

end

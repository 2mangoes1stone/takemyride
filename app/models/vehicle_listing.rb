class VehicleListing < ApplicationRecord

  belongs_to :car_model
  belongs_to :owner, class_name: 'User'
  # belongs_to :profile

  has_many :bookings, dependent: :destroy
  has_many :photos, dependent: :destroy

  geocoded_by :full_address, latitude: :lat, longitude: :long
  after_validation :geocode


  def self.search(search)
    base = self.joins(:car_model)
    base.where("UPPER (car_models.name) ILIKE ?", "%#{search.upcase}%").or(base.where("UPPER (city) ILIKE ?", "%#{search.upcase}%"))
  end

  def country
    ISO3166::Country.new(country_code)
  end

  def full_address
    [address, city, country.name].compact.join(', ')
  end

  def price_cents
    (price_per_day * 100).to_i
  end
end

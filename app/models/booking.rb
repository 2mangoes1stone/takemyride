class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :vehicle_listing

  has_one :rating, dependent: :destroy

  include ActiveModel::Validations

  validate :available_dates

  def available_dates
    errors.add(:base, 'Must select a valid start date') unless self.start_date >= self.vehicle_listing.start_date
    errors.add(:base, 'Must select a valid end date') unless self.end_date <= self.vehicle_listing.end_date
  end

  
  def full_address
    [address, city, state].compact.join(', ')
  end

  def country
    ISO3166::Country.new(country_code)
  end
  

  # validates :start_date, :end_date, :overlap => {:exclude_edges => "start_date"}
  # validates :start_date, :end_date, :overlap => {:exclude_edges => ["start_date", "end_date"]}

  # validates "vehicle_listings.start_date", "vehicle_listings.end_date",
  #     :overlap => {
  #     :query_options => {:includes => :vehicle_listing},
  #     :scope => { "positions.customer_id" => proc{|position| position.customer_id} }
  #   }
end

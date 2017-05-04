class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :vehicle

  has_one :rating, dependent: :destroy
end

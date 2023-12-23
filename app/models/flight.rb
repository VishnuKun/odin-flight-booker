class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.ransackable_attributes(auth_object = nil)
    ["arrival_airport_id", "departure_airport_id", "flight_duration", "start_datetime", "passengers"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["arrival_airport", "departure_airport"]
  end
end

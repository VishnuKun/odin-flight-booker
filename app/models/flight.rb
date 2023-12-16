class Flight < ApplicationRecord
  belongs_to :departure_airport_id, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
end

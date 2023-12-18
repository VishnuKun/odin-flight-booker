# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create airports
airport1 = Airport.create(code: 'LAX')
airport2 = Airport.create(code: 'SFO')
airport3 = Airport.create(code: 'SIO')
airport4 = Airport.create(code: 'AFO')
airport5 = Airport.create(code: 'BFO')
airport6 = Airport.create(code: 'CFX')
airport7 = Airport.create(code: 'DYZ')
airport8 = Airport.create(code: 'ELO')

# Create flights
flight1 = Flight.create(
  departure_airport_id: airport1.id,
  arrival_airport_id: airport2.id,
  start_datetime: DateTime.new(2023, 12, 16, 9, 0, 0),
  flight_duration: 2
)

flight2 = Flight.create(
  departure_airport_id: airport8.id,
  arrival_airport_id: airport6.id,
  start_datetime: DateTime.new(2023, 12, 16, 15, 0, 0),
  flight_duration: 2
)
flight3 = Flight.create(
  departure_airport_id: airport4.id,
  arrival_airport_id: airport7.id,
  start_datetime: DateTime.new(2023, 12, 16, 9, 0, 0),
  flight_duration: 2
)

flight4 = Flight.create(
  departure_airport_id: airport5.id,
  arrival_airport_id: airport3.id,
  start_datetime: DateTime.new(2023, 12, 16, 15, 0, 0),
  flight_duration: 2
)
flight5 = Flight.create(
  departure_airport_id: airport7.id,
  arrival_airport_id: airport3.id,
  start_datetime: DateTime.new(2023, 12, 16, 9, 0, 0),
  flight_duration: 2
)

flight6 = Flight.create(
  departure_airport_id: airport2.id,
  arrival_airport_id: airport8.id,
  start_datetime: DateTime.new(2023, 12, 16, 15, 0, 0),
  flight_duration: 2
)

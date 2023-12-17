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

# Create flights
flight1 = Flight.create(
  departure_airport_id: airport1.id,
  arrival_airport_id: airport2.id,
  start_datetime: DateTime.new(2023, 12, 16, 9, 0, 0),
  flight_duration: 2
)

flight2 = Flight.create(
  departure_airport_id: airport2.id,
  arrival_airport_id: airport1.id,
  start_datetime: DateTime.new(2023, 12, 16, 15, 0, 0),
  flight_duration: 2
)

class RemovePassengersFromFlights < ActiveRecord::Migration[7.1]
  def change
    remove_column :flights, :passengers, :integer
  end
end

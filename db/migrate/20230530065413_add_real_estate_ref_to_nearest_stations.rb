class AddRealEstateRefToNearestStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :nearest_stations, :real_estate, null: false, foreign_key: true
  end
end

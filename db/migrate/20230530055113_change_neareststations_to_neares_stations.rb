class ChangeNeareststationsToNearesStations < ActiveRecord::Migration[6.0]
  def change
    rename_table :neareststations, :nearest_stations
  end
end

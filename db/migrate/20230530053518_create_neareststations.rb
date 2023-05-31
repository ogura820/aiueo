class CreateNeareststations < ActiveRecord::Migration[6.0]
  def change
    create_table :neareststations do |t|
      t.string :line
      t.string :station 
      t.text :minute_to_walk
    end
  end
end

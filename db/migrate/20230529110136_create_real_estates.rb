class CreateRealEstates < ActiveRecord::Migration[6.0]
  def change
    create_table :real_estates do |t|
      t.string :name
      t.integer :rent
      t.text :address
      t.date :age
      t.integer :note
      t.timestamps
    end
  end
end

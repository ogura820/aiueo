class CreateRealEstates < ActiveRecord::Migration[6.0]
  def change
    create_table :real_estates do |t|
      t.string :name
      t.string :rent 
      t.text :address
      t.string :age
      t.text :note
      t.timestamps
    end
  end
end

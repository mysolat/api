class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :state_id
      t.string :zone_code
      t.string :district

      t.timestamps
    end
    add_index :locations, :state_id
    add_index :locations, :zone_code
  end
end

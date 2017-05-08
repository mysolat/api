class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :zone_id
      t.string  :district

      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :zone_code
      t.string :district

      t.timestamps
    end
  end
end

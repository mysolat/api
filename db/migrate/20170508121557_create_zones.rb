class CreateZones < ActiveRecord::Migration[5.1]
  def change
    create_table :zones do |t|
      t.string  :code
      t.integer :state_id
      t.text    :remarks

      t.timestamps
    end
  end
end

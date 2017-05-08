class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :country_id, default: "MY"

      t.timestamps
    end
  end
end

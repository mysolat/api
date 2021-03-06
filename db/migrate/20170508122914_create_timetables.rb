class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.string    :zone_code
      t.date      :tarikh
      t.date      :hijri
      t.string    :imsak
      t.string    :subuh
      t.string    :syuruk
      t.string    :dhuha
      t.string    :zohor
      t.string    :asar
      t.string    :maghrib
      t.string    :isyak
      t.string    :serial

      t.timestamps
    end
    add_index :timetables, :zone_code
    add_index :timetables, :tarikh
  end
end

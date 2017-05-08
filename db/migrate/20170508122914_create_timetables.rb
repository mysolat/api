class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.date   :tarikh
      t.string :imsak
      t.string :subuh
      t.string :syuruk
      t.string :zohor
      t.string :asar
      t.string :maghrib
      t.string :isyak

      t.timestamps
    end
  end
end

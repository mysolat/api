json.extract! timetable, :tarikh, :imsak, :subuh, :syuruk, :zohor, :asar, :maghrib, :isyak
json.tarikh_hijrah hijri_date(timetable.tarikh)

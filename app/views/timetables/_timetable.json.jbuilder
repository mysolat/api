json.extract! timetable, :imsak, :subuh, :syuruk, :zohor, :asar, :maghrib, :isyak
json.hari l(timetable.tarikh.to_date, format: '%A')
json.tarikh timetable.tarikh.to_date.try(:strftime, "%d %B %Y")
json.hijri hijri_date(timetable.hijri)

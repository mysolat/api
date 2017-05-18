json.extract! timetable, :imsak, :subuh, :syuruk, :zohor, :asar, :maghrib, :isyak
json.tarikh timetable.tarikh.to_date.try(:strftime, "%e %B %Y")
json.tarikh_hijrah formatted_hijrah_date(timetable.tarikh)

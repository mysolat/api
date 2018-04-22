json.extract! timetable, :imsak, :subuh, :syuruk, :zohor, :asar, :maghrib, :isyak
json.hari l(timetable.tarikh.to_date, format: '%A')
json.tarikh timetable.tarikh.to_date.try(:strftime, "%d %B %Y")
json.tarikh_hijrah formatted_hijrah_date(timetable.tarikh) #need to refator to i18n

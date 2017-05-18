json.array! @zones do |zone|
  json.zone zone.code
  json.locations do
    json.array!  zone.locations.pluck(:district)
  end
  json.timetables do
    json.array!  zone.timetables.daily(Date.today), partial: 'timetables/timetable', as: :timetable
  end
end


json.zone zone.code
json.locations do
	json.array!  zone.locations.pluck(:district)
end
json.timetables do
	json.array!  @timetables, partial: 'timetables/timetable', as: :timetable
end

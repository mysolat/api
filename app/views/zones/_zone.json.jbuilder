json.zone zone.code
json.locations do
	json.array!  zone.locations, partial: 'locations/location', as: :location
end
json.timetables do
	json.array!  zone.timetables, partial: 'timetables/timetable', as: :timetable
end

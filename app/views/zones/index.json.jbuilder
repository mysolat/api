json.array! @zones do |zone|
  json.negeri zone.state_name
  json.kod zone.code
  json.lokasi do
    json.array! zone.locations.pluck(:district)
  end
  json.jadual do
    json.array! zone.timetables.daily(Date.today), partial: 'timetables/timetable', as: :timetable
  end
end


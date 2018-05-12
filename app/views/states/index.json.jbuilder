json.array! @states do |state|
  json.negeri state.name

  json.lokasi do
    json.array! state.locations.group_by(&:zone_code) do |zone, districts|
      json.kod zone
      json.zon districts.pluck(:district)
    end
  end

end
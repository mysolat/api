json.array! @locations do |location|
  json.negeri location.state_name
  json.kod location.zone_code
  json.zon location.district
end

json.state state.name

json.zones do 
	json.array!  state.zones, partial: 'zones/zone', as: :zone
end
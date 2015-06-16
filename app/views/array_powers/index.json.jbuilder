json.array!(@array_powers) do |array_power|
  json.extract! array_power, :id
  json.url array_power_url(array_power, format: :json)
end

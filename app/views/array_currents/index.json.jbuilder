json.array!(@array_currents) do |array_current|
  json.extract! array_current, :id
  json.url array_current_url(array_current, format: :json)
end

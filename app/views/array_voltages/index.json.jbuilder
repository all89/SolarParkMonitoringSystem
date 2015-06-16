json.array!(@array_voltages) do |array_voltage|
  json.extract! array_voltage, :id
  json.url array_voltage_url(array_voltage, format: :json)
end

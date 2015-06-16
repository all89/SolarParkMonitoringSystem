json.array!(@mv_voltages) do |mv_voltage|
  json.extract! mv_voltage, :id
  json.url mv_voltage_url(mv_voltage, format: :json)
end

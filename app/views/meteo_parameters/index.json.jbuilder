json.array!(@meteo_parameters) do |meteo_parameter|
  json.extract! meteo_parameter, :id
  json.url meteo_parameter_url(meteo_parameter, format: :json)
end

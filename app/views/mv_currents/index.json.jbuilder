json.array!(@mv_currents) do |mv_current|
  json.extract! mv_current, :id
  json.url mv_current_url(mv_current, format: :json)
end

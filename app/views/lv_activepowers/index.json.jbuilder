json.array!(@lv_activepowers) do |lv_activepower|
  json.extract! lv_activepower, :id
  json.url lv_activepower_url(lv_activepower, format: :json)
end

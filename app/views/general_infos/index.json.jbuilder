json.array!(@general_infos) do |general_info|
  json.extract! general_info, :id
  json.url general_info_url(general_info, format: :json)
end

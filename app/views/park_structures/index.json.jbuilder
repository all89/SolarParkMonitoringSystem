json.array!(@park_structures) do |park_structure|
  json.extract! park_structure, :id
  json.url park_structure_url(park_structure, format: :json)
end

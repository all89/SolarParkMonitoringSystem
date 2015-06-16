json.array!(@calculations) do |calculation|
  json.extract! calculation, :id
  json.url calculation_url(calculation, format: :json)
end

json.array!(@mv_outputpowers) do |mv_outputpower|
  json.extract! mv_outputpower, :id
  json.url mv_outputpower_url(mv_outputpower, format: :json)
end

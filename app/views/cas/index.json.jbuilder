json.array!(@cas) do |ca|
  json.extract! ca, :id
  json.url ca_url(ca, format: :json)
end

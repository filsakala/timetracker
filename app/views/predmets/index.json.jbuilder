json.array!(@predmets) do |predmet|
  json.extract! predmet, :id, :nazov
  json.url predmet_url(predmet, format: :json)
end

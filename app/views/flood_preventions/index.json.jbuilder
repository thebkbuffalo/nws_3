json.array!(@flood_preventions) do |flood_prevention|
  json.extract! flood_prevention, :id
  json.url flood_prevention_url(flood_prevention, format: :json)
end

json.array!(@water_testing_services) do |water_testing_service|
  json.extract! water_testing_service, :id
  json.url water_testing_service_url(water_testing_service, format: :json)
end

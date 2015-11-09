json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :price, :model_id, :color, :condition
  json.url vehicle_url(vehicle, format: :json)
end

json.array!(@shipments) do |shipment|
  json.extract! shipment, :description, :user, :template, :source, :outbox_count
  json.url shipment_url(shipment, format: :json)
end

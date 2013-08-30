json.array!(@customers) do |customer|
  json.extract! customer, :ragione_sociale, :partita_iva, :codice_fiscale, :indirizzo, :data_attivazione, :stato
  json.url customer_url(customer, format: :json)
end

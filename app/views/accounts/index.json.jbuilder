json.array!(@accounts) do |account|
  json.extract! account, :connection_string, :customer_id
  json.url account_url(account, format: :json)
end

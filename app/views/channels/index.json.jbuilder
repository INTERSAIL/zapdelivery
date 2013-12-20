json.array!(@channels) do |channel|
  json.extract! channel, :name, :parameters, :account
  json.url channel_url(channel, format: :json)
end

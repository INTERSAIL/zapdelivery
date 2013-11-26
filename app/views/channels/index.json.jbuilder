json.array!(@channels) do |channel|
  json.extract! channel, :name, :parameters, :zf_id
  json.url channel_url(channel, format: :json)
end

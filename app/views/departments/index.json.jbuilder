json.array!(@departments) do |department|
  json.extract! department, :nome, :stato
  json.url department_url(department, format: :json)
end

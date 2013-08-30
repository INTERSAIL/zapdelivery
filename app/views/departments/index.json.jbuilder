json.array!(@departments) do |department|
  json.extract! department, :descrizione, :stato
  json.url department_url(department, format: :json)
end

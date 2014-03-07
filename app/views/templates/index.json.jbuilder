json.array!(@templates) do |template|
  json.extract! template, :id, :name, :template_doc_id, :tags
  json.url template_url(template, format: :json)
end

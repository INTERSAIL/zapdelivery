json.array!(@assignments) do |assignment|
  json.extract! assignment, :user_id, :account_id
  json.url assignment_url(assignment, format: :json)
end

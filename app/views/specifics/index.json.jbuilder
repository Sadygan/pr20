json.array!(@specifics) do |specific|
  json.extract! specific, :id, :name, :project_id
  json.url specific_url(specific, format: :json)
end

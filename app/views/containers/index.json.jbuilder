json.array!(@containers) do |container|
  json.extract! container, :id, :name, :filetype
  json.url container_url(container, format: :json)
end

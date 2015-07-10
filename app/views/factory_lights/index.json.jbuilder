json.array!(@factory_lights) do |factory_light|
  json.extract! factory_light, :id, :brend, :regin, :factor, :minimum_order, :delivery_time, :table_specification
  json.url factory_light_url(factory_light, format: :json)
end

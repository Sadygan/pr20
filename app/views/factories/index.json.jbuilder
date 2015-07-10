json.array!(@factories) do |factory|
  json.extract! factory, :id, :brend, :web, :autirification, :style, :line_product, :catalog, :price, :discount, :additional_discount, :delivery_term, :note, :reference
  json.url factory_url(factory, format: :json)
end

json.array!(@table_specifics) do |table_specific|
  json.extract! table_specific, :id, :factory, :model, :finishing, :description, :size, :number, :factory_price, :factory_sum, :factor, :price_euro, :sum_euro, :v, :specific_id
  json.url table_specific_url(table_specific, format: :json)
end

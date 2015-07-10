class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :brend
      t.string :web
      t.string :autirification
      t.string :style
      t.string :line_product
      t.string :catalog
      t.string :price
      t.string :discount
      t.string :additional_discount
      t.string :delivery_term
      t.string :note
      
      t.references :table_specific

      t.timestamps
    end
  end
end

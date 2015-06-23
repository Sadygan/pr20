class CreateTableSpecifics < ActiveRecord::Migration
  def change
    create_table :table_specifics do |t|
      t.string :factory
      t.string :model
      t.string :finishing
      t.string :description
      t.string :size
      t.integer :number
      t.float :factory_price
      t.float :factory_sum
      t.float :factor
      t.float :price_euro
      t.float :sum_euro
      t.string :v
      t.references :specific, index: true

      t.timestamps
    end
  end
end

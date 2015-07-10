class CreateFactoryLights < ActiveRecord::Migration
  def change
    create_table :factory_lights do |t|
      t.string :brend
      t.string :regin
      t.float :factor
      t.integer :minimum_order
      t.string :delivery_time
      
      t.references :table_specification

      t.timestamps
    end
  end
end

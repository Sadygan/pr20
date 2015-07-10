class CreateTableSpecifics < ActiveRecord::Migration
  def change
    create_table :table_specifics do |t|
      t.string  :article
      t.text    :type_furniture
      t.string  :finishing
      t.string  :finishing_for_client
      t.string  :size
      t.float   :unit_price_factory
      t.integer :additional_discount
      t.float   :unit_price_netto
      t.float   :summ_netto
      t.float   :unit_v
      t.float   :summ_v
      t.float   :factor
      t.float   :unit_price
      t.integer :number_of
      t.string  :summ
      t.references :specific, index: true

      t.timestamps
    end
  end
end

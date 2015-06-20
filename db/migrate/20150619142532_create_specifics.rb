class CreateSpecifics < ActiveRecord::Migration
  def change
    create_table :specifics do |t|
      t.string :name
      t.references :project, index: true

      t.timestamps
    end
  end
end

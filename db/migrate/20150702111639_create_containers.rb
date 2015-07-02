class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :name
      t.string :filetype
      t.references :project, index: true

      t.timestamps
    end
  end
end

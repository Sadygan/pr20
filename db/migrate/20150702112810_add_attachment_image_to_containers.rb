class AddAttachmentImageToContainers < ActiveRecord::Migration
  def self.up
    change_table :containers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :containers, :image
  end
end

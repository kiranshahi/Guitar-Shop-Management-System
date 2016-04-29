class AddAttachmentImageToGuitars < ActiveRecord::Migration
  def self.up
    change_table :guitars do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :guitars, :image
  end
end

class AddAttachmentImagesToImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :images do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :images, :images
  end
end

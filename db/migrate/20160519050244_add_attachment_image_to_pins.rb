class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image, :image_file_name
    end
  end

  def self.down
    remove_attachment :pins, :image
  end
end

class AddAttachmentMultimediaPicToMultimedia < ActiveRecord::Migration
  def self.up
    change_table :multimedia do |t|
      t.attachment :multimedia_pic
      t.string :multimedia_tag
    end
  end

  def self.down
    remove_attachment :multimedia, :multimedia_pic
  end
end

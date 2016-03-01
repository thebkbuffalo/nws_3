class AddAttachmentOzonePicToOzones < ActiveRecord::Migration
  def self.up
    change_table :ozones do |t|
      t.attachment :ozone_pic
      t.string :ozone_tag
    end
  end

  def self.down
    remove_attachment :ozones, :ozone_pic
  end
end

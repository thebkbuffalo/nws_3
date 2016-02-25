class AddAttachmentBhPicToBackhoeServices < ActiveRecord::Migration
  def self.up
    change_table :backhoe_services do |t|
      t.attachment :bh_pic
      t.string :bh_tag
    end
  end

  def self.down
    remove_attachment :backhoe_services, :bh_pic
  end
end

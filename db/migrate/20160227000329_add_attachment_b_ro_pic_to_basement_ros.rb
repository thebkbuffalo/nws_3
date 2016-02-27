class AddAttachmentBRoPicToBasementRos < ActiveRecord::Migration
  def self.up
    change_table :basement_ros do |t|
      t.attachment :b_ro_pic
      t.string :b_ro_tag
    end
  end

  def self.down
    remove_attachment :basement_ros, :b_ro_pic
  end
end

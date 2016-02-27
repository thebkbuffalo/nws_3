class AddAttachmentWhRoPicToWholehouseRos < ActiveRecord::Migration
  def self.up
    change_table :wholehouse_ros do |t|
      t.attachment :wh_ro_pic
      t.string :wh_ro_tag
    end
  end

  def self.down
    remove_attachment :wholehouse_ros, :wh_ro_pic
  end
end

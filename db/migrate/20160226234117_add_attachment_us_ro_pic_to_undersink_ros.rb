class AddAttachmentUsRoPicToUndersinkRos < ActiveRecord::Migration
  def self.up
    change_table :undersink_ros do |t|
      t.attachment :us_ro_pic
      t.string :us_ro_tag
    end
  end

  def self.down
    remove_attachment :undersink_ros, :us_ro_pic
  end
end

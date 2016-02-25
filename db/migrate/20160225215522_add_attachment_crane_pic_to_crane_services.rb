class AddAttachmentCranePicToCraneServices < ActiveRecord::Migration
  def self.up
    change_table :crane_services do |t|
      t.attachment :crane_pic
      t.string :crane_tag
    end
  end

  def self.down
    remove_attachment :crane_services, :crane_pic
  end
end

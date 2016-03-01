class AddAttachmentIronPicToIronSulfurs < ActiveRecord::Migration
  def self.up
    change_table :iron_sulfurs do |t|
      t.attachment :iron_pic
      t.string :iron_tag
    end
  end

  def self.down
    remove_attachment :iron_sulfurs, :iron_pic
  end
end

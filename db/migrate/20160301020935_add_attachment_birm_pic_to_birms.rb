class AddAttachmentBirmPicToBirms < ActiveRecord::Migration
  def self.up
    change_table :birms do |t|
      t.attachment :birm_pic
      t.string :birm_tag
    end
  end

  def self.down
    remove_attachment :birms, :birm_pic
  end
end

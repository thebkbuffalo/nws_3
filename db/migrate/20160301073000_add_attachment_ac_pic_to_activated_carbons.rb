class AddAttachmentAcPicToActivatedCarbons < ActiveRecord::Migration
  def self.up
    change_table :activated_carbons do |t|
      t.attachment :ac_pic
      t.string :ac_tag
    end
  end

  def self.down
    remove_attachment :activated_carbons, :ac_pic
  end
end

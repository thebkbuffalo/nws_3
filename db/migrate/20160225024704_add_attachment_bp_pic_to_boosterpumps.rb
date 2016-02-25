class AddAttachmentBpPicToBoosterpumps < ActiveRecord::Migration
  def self.up
    change_table :boosterpumps do |t|
      t.attachment :bp_pic
      t.string :bp_tag
    end
  end

  def self.down
    remove_attachment :boosterpumps, :bp_pic
  end
end

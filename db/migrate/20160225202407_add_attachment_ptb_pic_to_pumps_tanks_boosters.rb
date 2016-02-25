class AddAttachmentPtbPicToPumpsTanksBoosters < ActiveRecord::Migration
  def self.up
    change_table :pumps_tanks_boosters do |t|
      t.attachment :ptb_pic
      t.string :ptb_tag
    end
  end

  def self.down
    remove_attachment :pumps_tanks_boosters, :ptb_pic
  end
end

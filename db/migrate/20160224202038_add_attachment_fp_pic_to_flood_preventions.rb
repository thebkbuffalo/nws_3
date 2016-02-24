class AddAttachmentFpPicToFloodPreventions < ActiveRecord::Migration
  def self.up
    change_table :flood_preventions do |t|
      t.attachment :fp_pic
      t.string :fp_tag
    end
  end

  def self.down
    remove_attachment :flood_preventions, :fp_pic
  end
end

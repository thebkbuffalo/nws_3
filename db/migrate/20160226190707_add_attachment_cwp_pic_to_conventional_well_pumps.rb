class AddAttachmentCwpPicToConventionalWellPumps < ActiveRecord::Migration
  def self.up
    change_table :conventional_well_pumps do |t|
      t.attachment :cwp_pic
      t.string :cwp_tag
    end
  end

  def self.down
    remove_attachment :conventional_well_pumps, :cwp_pic
  end
end

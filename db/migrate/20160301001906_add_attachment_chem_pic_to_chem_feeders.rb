class AddAttachmentChemPicToChemFeeders < ActiveRecord::Migration
  def self.up
    change_table :chem_feeders do |t|
      t.attachment :chem_pic
      t.string :chem_tag
    end
  end

  def self.down
    remove_attachment :chem_feeders, :chem_pic
  end
end

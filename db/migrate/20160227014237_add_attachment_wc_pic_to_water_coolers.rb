class AddAttachmentWcPicToWaterCoolers < ActiveRecord::Migration
  def self.up
    change_table :water_coolers do |t|
      t.attachment :wc_pic
      t.string :wc_tag
    end
  end

  def self.down
    remove_attachment :water_coolers, :wc_pic
  end
end

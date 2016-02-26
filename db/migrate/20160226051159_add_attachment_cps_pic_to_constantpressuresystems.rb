class AddAttachmentCpsPicToConstantpressuresystems < ActiveRecord::Migration
  def self.up
    change_table :constantpressuresystems do |t|
      t.attachment :cps_pic
      t.string :cps_tag
    end
  end

  def self.down
    remove_attachment :constantpressuresystems, :cps_pic
  end
end

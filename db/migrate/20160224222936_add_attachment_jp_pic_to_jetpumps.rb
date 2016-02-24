class AddAttachmentJpPicToJetpumps < ActiveRecord::Migration
  def self.up
    change_table :jetpumps do |t|
      t.attachment :jp_pic
      t.string :jp_tag
    end
  end

  def self.down
    remove_attachment :jetpumps, :jp_pic
  end
end

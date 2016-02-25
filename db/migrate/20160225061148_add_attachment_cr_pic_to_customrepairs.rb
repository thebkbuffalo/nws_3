class AddAttachmentCrPicToCustomrepairs < ActiveRecord::Migration
  def self.up
    change_table :customrepairs do |t|
      t.attachment :cr_pic
      t.string :cr_tag
    end
  end

  def self.down
    remove_attachment :customrepairs, :cr_pic
  end
end

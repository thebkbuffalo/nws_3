class AddAttachmentNslPicToNewservicelines < ActiveRecord::Migration
  def self.up
    change_table :newservicelines do |t|
      t.attachment :nsl_pic
      t.string :nsl_tag
    end
  end

  def self.down
    remove_attachment :newservicelines, :nsl_pic
  end
end

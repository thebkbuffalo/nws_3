class AddAttachmentPtPicToPressuretanks < ActiveRecord::Migration
  def self.up
    change_table :pressuretanks do |t|
      t.attachment :pt_pic
      t.string :pt_tag
    end
  end

  def self.down
    remove_attachment :pressuretanks, :pt_pic
  end
end

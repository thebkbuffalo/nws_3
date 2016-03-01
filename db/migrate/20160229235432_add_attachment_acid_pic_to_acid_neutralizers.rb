class AddAttachmentAcidPicToAcidNeutralizers < ActiveRecord::Migration
  def self.up
    change_table :acid_neutralizers do |t|
      t.attachment :acid_pic
      t.string :acid_tag
    end
  end

  def self.down
    remove_attachment :acid_neutralizers, :acid_pic
  end
end

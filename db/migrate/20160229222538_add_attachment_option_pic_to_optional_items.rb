class AddAttachmentOptionPicToOptionalItems < ActiveRecord::Migration
  def self.up
    change_table :optional_items do |t|
      t.attachment :option_pic
      t.string :option_tag
    end
  end

  def self.down
    remove_attachment :optional_items, :option_pic
  end
end

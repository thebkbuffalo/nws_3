class AddAttachmentRoPicToReverseOsmoses < ActiveRecord::Migration
  def self.up
    change_table :reverse_osmoses do |t|
      t.attachment :ro_pic
      t.string :ro_tag
    end
  end

  def self.down
    remove_attachment :reverse_osmoses, :ro_pic
  end
end

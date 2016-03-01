class AddAttachmentUltraPicToUltraviolets < ActiveRecord::Migration
  def self.up
    change_table :ultraviolets do |t|
      t.attachment :ultra_pic
      t.string :ultra_tag
    end
  end

  def self.down
    remove_attachment :ultraviolets, :ultra_pic
  end
end

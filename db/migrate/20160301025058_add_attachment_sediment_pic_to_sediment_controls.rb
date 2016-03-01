class AddAttachmentSedimentPicToSedimentControls < ActiveRecord::Migration
  def self.up
    change_table :sediment_controls do |t|
      t.attachment :sediment_pic
      t.string :sediment_tag
    end
  end

  def self.down
    remove_attachment :sediment_controls, :sediment_pic
  end
end

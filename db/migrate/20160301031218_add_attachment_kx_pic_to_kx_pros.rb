class AddAttachmentKxPicToKxPros < ActiveRecord::Migration
  def self.up
    change_table :kx_pros do |t|
      t.attachment :kx_pic
      t.string :kx_tag
    end
  end

  def self.down
    remove_attachment :kx_pros, :kx_pic
  end
end

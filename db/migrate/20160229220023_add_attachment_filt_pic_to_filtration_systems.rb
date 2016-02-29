class AddAttachmentFiltPicToFiltrationSystems < ActiveRecord::Migration
  def self.up
    change_table :filtration_systems do |t|
      t.attachment :filt_pic
      t.string :filt_tag
    end
  end

  def self.down
    remove_attachment :filtration_systems, :filt_pic
  end
end

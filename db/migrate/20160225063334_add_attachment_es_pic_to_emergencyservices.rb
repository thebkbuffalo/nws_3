class AddAttachmentEsPicToEmergencyservices < ActiveRecord::Migration
  def self.up
    change_table :emergencyservices do |t|
      t.attachment :es_pic
      t.string :es_tag
    end
  end

  def self.down
    remove_attachment :emergencyservices, :es_pic
  end
end

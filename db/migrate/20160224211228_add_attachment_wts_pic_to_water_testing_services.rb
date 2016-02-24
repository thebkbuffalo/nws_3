class AddAttachmentWtsPicToWaterTestingServices < ActiveRecord::Migration
  def self.up
    change_table :water_testing_services do |t|
      t.attachment :wts_pic
      t.string :wts_tag
    end
  end

  def self.down
    remove_attachment :water_testing_services, :wts_pic
  end
end

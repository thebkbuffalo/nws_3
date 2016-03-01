class AddAttachmentWaterConditionPicToWaterConditioners < ActiveRecord::Migration
  def self.up
    change_table :water_conditioners do |t|
      t.attachment :water_condition_pic
      t.string :water_condition_tag
    end
  end

  def self.down
    remove_attachment :water_conditioners, :water_condition_pic
  end
end

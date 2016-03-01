class AddAttachmentAerationPicToAerations < ActiveRecord::Migration
  def self.up
    change_table :aerations do |t|
      t.attachment :aeration_pic
      t.string :aeration_tag
    end
  end

  def self.down
    remove_attachment :aerations, :aeration_pic
  end
end

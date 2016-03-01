class AddAttachmentIoPicToIonExchanges < ActiveRecord::Migration
  def self.up
    change_table :ion_exchanges do |t|
      t.attachment :io_pic
      t.string :io_tag
    end
  end

  def self.down
    remove_attachment :ion_exchanges, :io_pic
  end
end

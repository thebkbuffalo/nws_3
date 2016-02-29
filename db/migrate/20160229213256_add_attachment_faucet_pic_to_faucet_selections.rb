class AddAttachmentFaucetPicToFaucetSelections < ActiveRecord::Migration
  def self.up
    change_table :faucet_selections do |t|
      t.attachment :faucet_pic
      t.string :faucet_tag
    end
  end

  def self.down
    remove_attachment :faucet_selections, :faucet_pic
  end
end

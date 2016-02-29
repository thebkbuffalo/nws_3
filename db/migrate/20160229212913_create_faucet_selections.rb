class CreateFaucetSelections < ActiveRecord::Migration
  def change
    create_table :faucet_selections do |t|

      t.timestamps null: false
    end
  end
end

class CreateBoosterpumps < ActiveRecord::Migration
  def change
    create_table :boosterpumps do |t|

      t.timestamps null: false
    end
  end
end

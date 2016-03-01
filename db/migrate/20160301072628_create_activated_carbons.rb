class CreateActivatedCarbons < ActiveRecord::Migration
  def change
    create_table :activated_carbons do |t|

      t.timestamps null: false
    end
  end
end

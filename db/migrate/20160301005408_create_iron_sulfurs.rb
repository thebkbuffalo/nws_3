class CreateIronSulfurs < ActiveRecord::Migration
  def change
    create_table :iron_sulfurs do |t|

      t.timestamps null: false
    end
  end
end

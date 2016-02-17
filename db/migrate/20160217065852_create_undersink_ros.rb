class CreateUndersinkRos < ActiveRecord::Migration
  def change
    create_table :undersink_ros do |t|

      t.timestamps null: false
    end
  end
end

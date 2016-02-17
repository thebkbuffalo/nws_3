class CreateWholehouseRos < ActiveRecord::Migration
  def change
    create_table :wholehouse_ros do |t|

      t.timestamps null: false
    end
  end
end

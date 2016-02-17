class CreateBasementRos < ActiveRecord::Migration
  def change
    create_table :basement_ros do |t|

      t.timestamps null: false
    end
  end
end

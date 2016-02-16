class CreateWaterTestingServices < ActiveRecord::Migration
  def change
    create_table :water_testing_services do |t|

      t.timestamps null: false
    end
  end
end

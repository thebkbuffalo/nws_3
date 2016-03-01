class CreateWaterConditioners < ActiveRecord::Migration
  def change
    create_table :water_conditioners do |t|

      t.timestamps null: false
    end
  end
end

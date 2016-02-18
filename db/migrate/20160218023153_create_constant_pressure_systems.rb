class CreateConstantPressureSystems < ActiveRecord::Migration
  def change
    create_table :constant_pressure_systems do |t|

      t.timestamps null: false
    end
  end
end

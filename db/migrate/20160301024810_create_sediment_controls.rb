class CreateSedimentControls < ActiveRecord::Migration
  def change
    create_table :sediment_controls do |t|

      t.timestamps null: false
    end
  end
end

class CreateFiltrationSystems < ActiveRecord::Migration
  def change
    create_table :filtration_systems do |t|

      t.timestamps null: false
    end
  end
end

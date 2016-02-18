class CreateConventionalWellPumps < ActiveRecord::Migration
  def change
    create_table :conventional_well_pumps do |t|

      t.timestamps null: false
    end
  end
end

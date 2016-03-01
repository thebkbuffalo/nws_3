class CreateChemFeeders < ActiveRecord::Migration
  def change
    create_table :chem_feeders do |t|

      t.timestamps null: false
    end
  end
end

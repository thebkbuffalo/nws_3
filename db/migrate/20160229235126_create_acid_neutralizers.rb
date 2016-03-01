class CreateAcidNeutralizers < ActiveRecord::Migration
  def change
    create_table :acid_neutralizers do |t|

      t.timestamps null: false
    end
  end
end

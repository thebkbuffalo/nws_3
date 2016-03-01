class CreateUltraviolets < ActiveRecord::Migration
  def change
    create_table :ultraviolets do |t|

      t.timestamps null: false
    end
  end
end

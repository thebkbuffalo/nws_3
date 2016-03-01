class CreateReverseOsmoses < ActiveRecord::Migration
  def change
    create_table :reverse_osmoses do |t|

      t.timestamps null: false
    end
  end
end

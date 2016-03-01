class CreateBirms < ActiveRecord::Migration
  def change
    create_table :birms do |t|

      t.timestamps null: false
    end
  end
end

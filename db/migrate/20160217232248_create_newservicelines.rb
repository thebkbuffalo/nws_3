class CreateNewservicelines < ActiveRecord::Migration
  def change
    create_table :newservicelines do |t|

      t.timestamps null: false
    end
  end
end

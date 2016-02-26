class CreateConstantpressuresystems < ActiveRecord::Migration
  def change
    create_table :constantpressuresystems do |t|

      t.timestamps null: false
    end
  end
end

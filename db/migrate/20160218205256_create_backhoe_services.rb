class CreateBackhoeServices < ActiveRecord::Migration
  def change
    create_table :backhoe_services do |t|

      t.timestamps null: false
    end
  end
end

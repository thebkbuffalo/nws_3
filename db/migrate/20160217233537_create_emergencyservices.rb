class CreateEmergencyservices < ActiveRecord::Migration
  def change
    create_table :emergencyservices do |t|

      t.timestamps null: false
    end
  end
end

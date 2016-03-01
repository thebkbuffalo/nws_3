class CreateOzones < ActiveRecord::Migration
  def change
    create_table :ozones do |t|

      t.timestamps null: false
    end
  end
end

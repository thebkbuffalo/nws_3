class CreateOptionalItems < ActiveRecord::Migration
  def change
    create_table :optional_items do |t|

      t.timestamps null: false
    end
  end
end

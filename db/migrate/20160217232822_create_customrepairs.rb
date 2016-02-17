class CreateCustomrepairs < ActiveRecord::Migration
  def change
    create_table :customrepairs do |t|

      t.timestamps null: false
    end
  end
end

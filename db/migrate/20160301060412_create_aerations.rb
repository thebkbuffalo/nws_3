class CreateAerations < ActiveRecord::Migration
  def change
    create_table :aerations do |t|

      t.timestamps null: false
    end
  end
end

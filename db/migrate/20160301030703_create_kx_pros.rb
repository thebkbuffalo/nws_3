class CreateKxPros < ActiveRecord::Migration
  def change
    create_table :kx_pros do |t|

      t.timestamps null: false
    end
  end
end

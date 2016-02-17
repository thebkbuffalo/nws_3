class CreatePressuretanks < ActiveRecord::Migration
  def change
    create_table :pressuretanks do |t|

      t.timestamps null: false
    end
  end
end

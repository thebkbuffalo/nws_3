class CreateIonExchanges < ActiveRecord::Migration
  def change
    create_table :ion_exchanges do |t|

      t.timestamps null: false
    end
  end
end

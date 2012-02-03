class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|

      t.timestamps
    end
  end
end

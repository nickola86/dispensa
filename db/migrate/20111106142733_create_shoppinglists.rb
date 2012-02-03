class CreateShoppinglists < ActiveRecord::Migration
  def change
    create_table :shoppinglists do |t|

      t.timestamps
    end
  end
end

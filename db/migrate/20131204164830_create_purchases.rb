class CreatePurchases < ActiveRecord::Migration
  def up
    create_table :purchases do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :amount
    end
  end

  def down
    drop_table :purchases
  end
end

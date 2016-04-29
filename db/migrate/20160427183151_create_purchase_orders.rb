class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.date :purchaseDate
      t.date :delivaryDate
      t.string :make
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end

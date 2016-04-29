class AddSupplierNameGuitarNameToPurchaseOrders < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :SupplierName, :string
    add_column :purchase_orders, :GuitarName, :string
  end
end

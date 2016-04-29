class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :dealer_name
      t.string :address
      t.string :email
      t.integer :contact

      t.timestamps null: false
    end
  end
end

class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :guitar_name
      t.string :guitar_make
      t.string :guitar_model
      t.string :guitar_color
      t.integer :purposed_selling_price
      t.string :damaged_status
      t.integer :rack_no

      t.timestamps null: false
    end
  end
end

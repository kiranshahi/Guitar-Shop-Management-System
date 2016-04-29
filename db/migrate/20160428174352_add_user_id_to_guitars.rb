class AddUserIdToGuitars < ActiveRecord::Migration
  def change
    add_column :guitars, :user_id, :integer
  end
end

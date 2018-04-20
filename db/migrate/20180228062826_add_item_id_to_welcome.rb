class AddItemIdToWelcome < ActiveRecord::Migration[5.1]
  def change
    add_column :welcomes, :item_id, :integer
  end
end

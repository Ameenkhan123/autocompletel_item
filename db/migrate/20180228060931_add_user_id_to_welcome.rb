class AddUserIdToWelcome < ActiveRecord::Migration[5.1]
  def change
    add_column :welcomes, :user_id, :integer
  end
end

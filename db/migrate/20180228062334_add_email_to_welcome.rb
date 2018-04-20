class AddEmailToWelcome < ActiveRecord::Migration[5.1]
  def change
    add_column :welcomes, :email, :string
  end
end

class AddPinreviewToWelcome < ActiveRecord::Migration[5.1]
  def change
    add_column :welcomes, :pinreview, :boolean
  end
end

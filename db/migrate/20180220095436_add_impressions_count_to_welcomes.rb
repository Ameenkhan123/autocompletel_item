class AddImpressionsCountToWelcomes < ActiveRecord::Migration[5.1]
  def change
    add_column :welcomes, :impressions_count, :integer
    add_column :welcomes, :name, :string
  end
end

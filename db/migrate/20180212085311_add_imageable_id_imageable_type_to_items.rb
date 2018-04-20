class AddImageableIdImageableTypeToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :imageable_type, :string
    add_column :items, :imageable_id, :integer
  end
end

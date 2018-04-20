class RenameNameToItems < ActiveRecord::Migration[5.1]
  def change
  	rename_column :items, :name, :names
  end
end

class AddImagesToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :images, :string
  end
end

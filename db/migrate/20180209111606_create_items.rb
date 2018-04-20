class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_list
      t.string :list
      t.string :item_img
      t.string :item_title
      t.string :price
      t.string :tips

      t.timestamps
    end
  end
end

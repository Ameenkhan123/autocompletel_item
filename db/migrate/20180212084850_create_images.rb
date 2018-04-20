class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end

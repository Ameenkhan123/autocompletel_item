class CreateTestds < ActiveRecord::Migration[5.1]
  def change
    create_table :testds do |t|

      t.timestamps
    end
  end
end

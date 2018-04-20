class CreateTestvs < ActiveRecord::Migration[5.1]
  def change
    create_table :testvs do |t|

      t.timestamps
    end
  end
end

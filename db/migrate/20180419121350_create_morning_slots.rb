class CreateMorningSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :morning_slots do |t|
      t.string :name

      t.timestamps
    end
  end
end

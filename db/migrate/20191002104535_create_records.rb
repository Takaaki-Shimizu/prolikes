class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :day_hour, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end

class AddTriggerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :trigger, :text
  end
end

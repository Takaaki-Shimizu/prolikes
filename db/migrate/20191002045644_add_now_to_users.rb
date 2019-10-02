class AddNowToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :now, :text
  end
end

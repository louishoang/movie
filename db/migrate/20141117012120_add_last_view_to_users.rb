class AddLastViewToUsers < ActiveRecord::Migration
  def up
    add_column :users, :last_view, :integer, default: 1
  end

  def down
    remove_column :users, :last_view
  end
end

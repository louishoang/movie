class AddRoleToUsers < ActiveRecord::Migration
  def up
    add_column :users, :role, :string, default: "trial"
  end

  def down
    remove_column :users, :role
  end
end

class AddViewcountToShows < ActiveRecord::Migration
  def up
    add_column :shows, :viewcount, :integer, default: 0
  end

  def down
    remove_column :shows, :viewcount
  end
end

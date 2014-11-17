class AddVideoUrlToShows < ActiveRecord::Migration
  def up
    add_column :shows, :video_uid, :string
  end

  def down
    remove_column :shows, :video_uid
  end
end

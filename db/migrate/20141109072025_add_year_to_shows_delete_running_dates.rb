class AddYearToShowsDeleteRunningDates < ActiveRecord::Migration
  def up
    add_column :shows, :year, :integer
    add_column :shows, :poster, :string
    remove_column :shows, :running_dates
  end

  def down
    remove_column :shows, :poster
    remove_column :shows, :year, :integer
    add_column :shows, :running_dates, :string
  end
end

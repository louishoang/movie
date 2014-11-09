class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :genre_id, null: false
      t.string :running_dates

      t.timestamps
    end
  end
end

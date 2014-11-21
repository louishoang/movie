class CreateInfo < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name, null: false
      t.text :permalink
      t.text :content

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :show_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.integer :score, null: false, default: 0

      t.timestamps
    end
  end
end

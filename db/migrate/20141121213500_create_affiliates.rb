class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :name, null: false
      t.text :link, null: false
      t.text :image, null: false
      t.text :description

      t.timestamps
    end
  end
end

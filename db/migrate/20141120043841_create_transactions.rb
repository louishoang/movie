class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name, null: false
      t.string :source, null: false
      t.decimal :amount, null: false, precision: 8, scale: 2
      t.string :type, null: false, default: "income"
      t.text :description

      t.timestamps
    end
  end
end

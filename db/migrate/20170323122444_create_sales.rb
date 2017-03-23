class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :saleTotal
      t.integer :qtySold
      t.date :saleDate
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :sales, :users
  end
end

class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.decimal :salePrice
      t.boolean :returned
      t.references :book, index: true
      t.references :sale, index: true

      t.timestamps null: false
    end
    add_foreign_key :sale_items, :books
    add_foreign_key :sale_items, :sales
  end
end

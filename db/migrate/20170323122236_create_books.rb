class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.decimal :costPrice
      t.string :ISBN
      t.integer :gty
      t.string :publisher
      t.text :description
      t.string :image
      t.string :relaseDate
      t.references :supplier, index: true

      t.timestamps null: false
    end
    add_foreign_key :books, :suppliers
  end
end

class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|
      t.date :returnDate
      t.references :saleItem, index: true

      t.timestamps null: false
    end
    add_foreign_key :returns, :saleItems
  end
end

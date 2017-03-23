class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.text :address
      t.string :tel

      t.timestamps null: false
    end
  end
end

# Carts table
class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :quantity
      t.datetime :order_date
      t.references :customer, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps null: false
    end
  end
end

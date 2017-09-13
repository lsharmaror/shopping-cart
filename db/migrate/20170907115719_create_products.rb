# Products table
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :unit_price
      t.float :discount
      t.references :category, foreign_key: true
      t.timestamps null: false
    end
  end
end

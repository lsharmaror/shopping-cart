ActiveRecord::Schema.define(version: 20170911143621) do
  create_table 'carts', force: :cascade do |t|
    t.integer  'quantity'
    t.datetime 'order_date'
    t.integer  'customer_id'
    t.integer  'product_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.string   'category_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', force: :cascade do |t|
    t.integer  'cart_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string   'product_name'
    t.float    'unit_price'
    t.float    'discount'
    t.integer  'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string   'user_name'
    t.string   'email_id'
    t.string   'password'
    t.string   'password_confirmation'
    t.integer  'phone_no'
    t.text     'address'
    t.integer  'zipcode'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end

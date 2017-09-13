# Users table
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email_id
      t.string :password
      t.string :password_confirmation
      t.integer :phone_no
      t.text :address
      t.integer :zipcode
      t.timestamps null: false
    end
  end
end

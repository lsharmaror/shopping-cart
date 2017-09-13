# Validations for the product model
class Product < ActiveRecord::Base
  belongs_to :category
  validates :product_name, presence: true
  validates :unit_price, presence: true
end

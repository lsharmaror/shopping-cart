# Validations for the category model
class Category < ActiveRecord::Base
  has_many :products, dependent: :destroy
  validates :category_name, presence: true
end

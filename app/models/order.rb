class Order < ActiveRecord::Base

  has_many :products, through: :order_products 
  has_many :order_products
  
end

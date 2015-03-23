class Order < ActiveRecord::Base
  has_many :products, through: :order_products 
  has_many :order_products




  # validate :my_method

  # def my_method
  #   if name.length = 1 then self.errors.add(:name, 'Bad name')
  # end
end

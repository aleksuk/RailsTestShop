class Product < ActiveRecord::Base

  has_many :orders, through: :order_products
  has_many :order_products

  # validate :name, presence: true
  validates :name,
            presence: true,
            length: { minimum: 2 }

  validates :price,
            presence: true,
            numericality: true
  # validate :my_validation, on: :name

  def convert_to_ua
    price * 8
  end

end

class Product < ActiveRecord::Base

  #scope :cheap => { where('price < 2') },
      # :cheaper_then => (p) { where('price < p') }   

  has_many :orders, through: :order_products
  has_many :order_products

  mount_uploader :image, ProductUploader

  validates :name,
            presence: true,
            length: { minimum: 2 }

  validates :price,
            presence: true,
            numericality: true

  def convert_to_ua
    price * 8
  end

end
#use scope like Product.cheap
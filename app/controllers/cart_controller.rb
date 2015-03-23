class CartController < ApplicationController

  def add_to_cart
    cart.add Product.find(params[:id])

    redirect_to request.referer
  end

  def index
    @products = cart.all
    @total_price = cart.show_price
  end

  def delete
    product = Product.find(params[:id]) if params[:id]

    if product
      cart.delete product
    else
      cart.delete_all
    end

    redirect_to request.referer
  end

  def create_order
    order = Order.new(total_price: cart.show_price)
    order.products = cart.all

    if order.save
      cart.delete_all
      redirect_to orders_path
    else
      redirect_to cart_path
    end
  end

  private

  def cart
    unless session[:cart]
      session[:cart] = Cart.new
    end

    session[:cart]
  end
end

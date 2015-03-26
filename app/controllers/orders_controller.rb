class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    return redirect_to(cart_path) unless cart

    order = Order.new(total_price: cart.show_price)
    order.products = cart.all

    if order.products.size > 0 && order.save
      cart.delete_all
      redirect_to orders_path
    else
      redirect_to cart_index_path
    end
  end

end

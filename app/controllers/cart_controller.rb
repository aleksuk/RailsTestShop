class CartController < ApplicationController

  def update
    cart.add Product.find(params[:id])

    redirect_to request.referer
  end

  def index
    @products = cart.all
    @total_price = cart.show_price
  end

  def destroy
    if params[:id] == 'all'
      cart.delete_all
      
    else
      product = Product.find(params[:id])
      cart.delete product
    end

    redirect_to request.referer
  end

end

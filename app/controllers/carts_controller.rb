class CartsController < ApplicationController

  def update
    if params[:type] == 'delete'
      product = Product.find(params[:id])
      cart.delete product
    else
      cart.add Product.find(params[:id])
    end

    redirect_to request.referer
  end

  def show
    @products = cart.all
    @total_price = cart.show_price
  end

  def destroy
    cart.delete_all
    redirect_to request.referer
  end

end

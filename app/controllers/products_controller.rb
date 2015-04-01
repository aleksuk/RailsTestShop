class ProductsController < ApplicationController

  before_action :authenticate_user!,
                :except => [:index, :show]

  def index
    @products = Product.paginate(:page => params[:page], :per_page => 2)
    # @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def destroy
    Product.find(params[:id]).destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :image)
  end

end

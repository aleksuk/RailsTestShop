class Cart

  def initialize
    @cart = []
  end

  public

  def add product
    @cart << product
  end

  def delete product
    el_index = @cart.find_index do |el|
      el.id == product.id
    end
    
    @cart.delete_at el_index
  end

  def show_price
    @cart.reduce 0 do |sum, el|
      sum += el.price
    end
  end

  def all
    @cart
  end

  def delete_all
    @cart = []
  end

end
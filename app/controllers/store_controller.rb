
class StoreController < ApplicationController

  skip_before_filter :authorize

  def belts
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def hats
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def index
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def pants
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def shirts
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def shoes
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def sunglasses
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def underwear
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
  def watches
    @count = 3
    @products = Product.order(:title)
    @cart = current_cart
  end
end

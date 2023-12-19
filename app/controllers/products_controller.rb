class ProductsController < ApplicationController
  def index
    @products = Goods.all
  end

  def products

  end

  def add_to_cart
    # код для добавления товара в корзину
  end
end


class ProductsController < ApplicationController
  def index
    #@goods = good.all
  end


  def catalog
    @goods = Good.all
    @cart_part = CartPart.new
    render 'products/products'
  end


  private
  def good_params
    params.require(:good).permit(:id,:nomenclature, :price, :category, :quantity, :measure)
  end

end


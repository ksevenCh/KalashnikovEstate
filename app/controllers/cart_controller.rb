class CartController < ApplicationController
  def cart

  end

  def index
    @cart = Cart_part.where(user_id: current_user.id)
  end

  def checkout
    # код для оформления заказа
    redirect_to thank_you_path
  end



  def remove_item
    # код для удаления товара из корзины
  end
end


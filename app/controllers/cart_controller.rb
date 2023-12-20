class CartController < ApplicationController
  def cart

  end

  def index

  end

  def checkout
    # код для оформления заказа
    redirect_to thank_you_path
  end



  def remove_item
    # код для удаления товара из корзины
  end
  def additem
    return unless session[:user_id]

    @user = User.find_by(id: session[:user_id])
    @good = Good.find_by(id: 1)
    @cart_part = CartPart.new(quantity: 1)
    @cart_part.user_id = @user.id
    @cart_part.good_id = @good.id
    @cart_part.save

      redirect_to controller: :cart, action: :cart, notice: "Товар успешно добавлен"
  end
  def cart_part_params
    params.require(:cart_part).permit(:quantity)
  end
end


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
    @selected_good = Good.find_by(id: params[:good_id]) # Получаем id товара из параметров запроса
    @cart_part = CartPart.new(user_id: @user.id, good_id: @selected_good.id, quantity: 1)
    if @cart_part.save && @cart_part.good_id?
      redirect_to controller: :products, action: :catalog, notice: "Товар успешно добавлен"
    else
      redirect_to controller: :products, action: :catalog, notice: "Товар не добавлен"
    end

  end
  def cart_part_params
    params.require(:cart_part).permit(:quantity)
  end
end


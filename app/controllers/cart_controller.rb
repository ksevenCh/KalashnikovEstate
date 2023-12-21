class CartController < ApplicationController
  def cart
    @cart_part = CartPart.all
    @goods = Good.all
  end

  def checkout
    # код для оформления заказа
    redirect_to thank_you_path
  end



  def remove_item
    cart_part = CartPart.find_by(id: params[:id])
    cart_part.destroy
    redirect_to controller: :cart, action: :cart, notice: "Товар удалён"
  end

  def additem_cart
    return unless session[:user_id]

    @user = User.find_by(id: session[:user_id])
    @selected_good = Good.find_by(id: params[:good_id]) # Получаем id товара из параметров запроса
    @cart_part = CartPart.new(user_id: @user.id, good_id: @selected_good.id, quantity: 1)
    if @cart_part.save && @cart_part.good_id?
      redirect_to controller: :cart, action: :cart, notice: "Товар успешно добавлен"
    else
      redirect_to controller: :cart, action: :cart, notice: "Товар не добавлен"
    end

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
    params.require(:cart_part).permit(:id, :user_id, :good_id, :quantity)
  end
end


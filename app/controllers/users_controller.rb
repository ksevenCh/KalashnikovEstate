class UsersController < ApplicationController
  def login

  end

  def enter
    user = User.find_by(login: params[:login])
    if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to controller: :products, action: :catalog, notice: "Logged is succesfully"
    else
      puts "Invalid login or password"
      render :login
    end
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice:
        "Пользователь успешно зарегистрирован"
    else
      render 'registration'
    end
  end

  def additem
    @cart_part = CartPart.new(cart_part_params)
    if @cart_part.save
      redirect_to controller: :cart, action: :cart,
                  notice: "Товар успешно добаввлен"
    else
      redirect_to controller: :products, action: :catalog, notice: "Товар не добаввлен"
    end

  end
  def registration
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:email, :login, :password, :phone_num, :password_confirmation)
  end
end
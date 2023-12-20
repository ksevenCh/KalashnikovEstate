class UsersController < ApplicationController
  def login

  end

  def enter
    user = User.find_by(login: params[:login])
    if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to controller: :products, action: :products, notice: "Logged is succesfully"
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

  def registration
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:email, :login, :password, :phone_num, :password_confirmation)
  end
end
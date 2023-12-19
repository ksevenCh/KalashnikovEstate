class UsersController < ApplicationController
  def login

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
    params.require(:user).permit(:email, :login, :password, :phone_num)
  end
end
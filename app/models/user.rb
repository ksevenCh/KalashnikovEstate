class User < ApplicationRecord
  validates :email, :login, :password, :phone_num, presence: true
  validates :email, :login, :phone_num, uniqueness: true
  validates_format_of :email, :with => /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i, on: :create
  has_many :cart_parts
  has_secure_password
end
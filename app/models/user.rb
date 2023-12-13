class User < ApplicationRecord
  validates :email, :login, :password, presence: true
  validates :email, :login, :phone_num, uniqueness: true

  has_many :cart_parts
end
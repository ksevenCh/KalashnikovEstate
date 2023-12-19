class CartPart < ApplicationRecord
  validates :quantity, presence: true

  belongs_to :user
  has_one :good
end
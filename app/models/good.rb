class Good < ApplicationRecord
  validates :nomenclature, :price, :category, :quantity, :measure, presence: true
  validates :nomenclature, uniqueness: true

  belongs_to :cart_part
end
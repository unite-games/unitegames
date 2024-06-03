class Game < ApplicationRecord
  has_many :transactions
  validates :title, :category, :price, presence: true
end

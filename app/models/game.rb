class Game < ApplicationRecord
  belongs_to :user
  has_many :transactions
  validates :title, :category, :price, presence: true
end

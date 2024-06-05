class Game < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :transactions
  validates :title, :category, :price, presence: true
end

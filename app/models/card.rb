class Card < ApplicationRecord
  belongs_to :list

  validates :title, length: {in: 1..255}
  validates :memo, length: {maximum: 1000}
  validates :order_id, presence: true, uniqueness: {message: '順番に重複があります'}
end

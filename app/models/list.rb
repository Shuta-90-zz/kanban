class List < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cards, dependent: :destroy

  validates :title, length: {in: 1..255}
end

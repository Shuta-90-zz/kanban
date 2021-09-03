class List < ApplicationRecord
  belongs_to :user, optional: true

  validates :title, length: {in: 1..255}
end

class Question < ApplicationRecord
  validates :title, presence: { message: "は空欄にできません" }
  validates :detail, presence: { message: "は空欄にできません" }
  has_many :solutions
  has_many :reviews
end

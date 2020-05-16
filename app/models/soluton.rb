class Soluton < ApplicationRecord
    validates :title, presence: true
    validates :detail. presence: true
    belongs_to: question
end

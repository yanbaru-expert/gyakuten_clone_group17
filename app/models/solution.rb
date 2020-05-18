class Solution < ApplicationRecord
    validates :detail , presence: true
    belongs_to :questions
end

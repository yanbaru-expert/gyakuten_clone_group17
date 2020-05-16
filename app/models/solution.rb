class Solution < ApplicationRecord
    validates :title , presence: true
    validates :detail , presence: true
    belongs_to :questions
end

class Solution < ApplicationRecord
  validates :answer , presence: true
  validates :question_id , presence: true

end

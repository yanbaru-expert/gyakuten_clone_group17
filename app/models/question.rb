class Question < ApplicationRecord
  validates :title , presence: true
  validates :detail , presence: true

  path = 'db/csv_data/question_data.csv'
  
end

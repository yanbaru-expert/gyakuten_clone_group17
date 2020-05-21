class Movie < ApplicationRecord
  validates :title , presence: true
  validates :url, presence: true
  validates :genre, presence: true  
end

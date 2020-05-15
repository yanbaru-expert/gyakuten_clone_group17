class Question < ApplicationRecord
  validates :title , presence: { message: "【質問】は空欄にできません" }
  validates :detail , presence: { message: "【質問】は空欄にできません" }

end

class Word < ApplicationRecord
  validates :word, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
  # Userとの紐づけ
  belongs_to :user
end

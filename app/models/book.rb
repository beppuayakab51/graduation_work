class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :original_text, presence: true, length: { maximum: 65_535 }
  # Userとの紐づけ
  belongs_to :user
end

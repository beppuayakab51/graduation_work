class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :original_text, presence: true, length: { maximum: 65_535 }
  # Userとの紐づけ
  belongs_to :user

  enum state: { draft: 0, working: 1, complete: 2 }

end

class Word < ApplicationRecord
  validates :word, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
  # Userとの紐づけ
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "updated_at", "user_id", "word"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end
end

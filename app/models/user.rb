class User < ApplicationRecord
    authenticates_with_sorcery!
    # 紐づけ、ユーザーが削除されたらbookとwordは削除される。
    has_many :books, dependent: :destroy
    has_many :words, dependent: :destroy

    validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
    validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
    validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
    validates :email, presence: true, uniqueness: true

end

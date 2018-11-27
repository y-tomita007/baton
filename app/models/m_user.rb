class MUser < ApplicationRecord
  has_many :m_credits

  validates :name, presence: true, length: { maximum: 255 }
  # TODO: emailのバリデーション追加
  validates :email, presence: true
end

class MUser < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  # TODO: emailのバリデーション追加
  validates :email, presence: true
  validates :card_company, presence: true
  validates :card_name, presence: true, length: { maximum: 255 }
  validates :card_expiration_month, presence: true

  enum card_company: { visa: 1, master_card: 2, american_express: 3,
                       discover: 4, jcb: 5, diners_club: 6 }
end

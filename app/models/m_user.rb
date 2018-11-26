class MUser < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  # TODO: emailのバリデーション追加
  validates :email, presence: true
  validates :card_company, presence: true
  validates :card_name, presence: true, length: { maximum: 255 }
  validates :card_expiration_month, presence: true

  enum card_company: { visa: 1, master_card: 2, jcb: 3, american_express: 4,
                       diners_club: 5, discover: 6, union_pay: 7, nicos: 8,
                       dc: 9, mufj: 10, saison: 11 }
end

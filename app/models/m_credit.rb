class MCredit < ApplicationRecord
  belongs_to :m_user

  validates :name, presence: true, length: { maximum: 255 }
  validates :company, presence: true
  validates :number, presence: true
  validates :expire_on, presence: true

  enum card_company: { visa: 1, master_card: 2, american_express: 3,
                       discover: 4, jcb: 5, diners_club: 6 }
end

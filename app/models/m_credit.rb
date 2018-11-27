class MCredit < ApplicationRecord
  belongs_to :m_user

  before_save :skimming_number

  validates :name, presence: true, length: { maximum: 255 }
  validates :company, presence: true
  validates :number, presence: true
  validates :expire_on, presence: true

  enum company: { visa: 1, master_card: 2, american_express: 3,
                  discover: 4, jcb: 5, diners_club: 6 }

  def skimming_number
    self.number = number[0..3]
  end
end

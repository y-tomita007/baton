class MCompany < ApplicationRecord
  has_many :m_credits

  accepts_nested_attributes_for :m_credits

  # TODO: 正規表現のvalidationは共通化する
  validates :name, presence: true, length: { maximum: 255 }
  validates :postal_nummber, presence: true, format: { with: /\A\d{7}\z/ }
  validates :address, presence: true, length: { maximum: 255 }
  validates :personnel, presence: true, length: { maximum: 255 }
  validates :personnel_department, presence: true, length: { maximum: 255 }
  validates :personnel_position, presence: true, length: { maximum: 255 }
  validates :tel, presence: true, format: { with: /\A\d{10}\z|\A\d{11}\z/ }
  validates :email, presence: true, format: { with: /\A\S+@\S+\.\S+\z/ }
end

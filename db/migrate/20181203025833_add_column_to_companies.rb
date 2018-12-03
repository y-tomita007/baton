class AddColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :m_companies, :tel,                  :string, null: false, comment: '電話番号'
    add_column :m_companies, :personnel,            :string, null: false, comment: '担当者'
    add_column :m_companies, :personnel_department, :string, null: false, comment: '担当者の部署'
    add_column :m_companies, :personnel_position,   :string, null: false, comment: '担当者の役職'
    add_column :m_companies, :postal_nummber,       :string, null: false, comment: '郵便番号'
    add_column :m_companies, :address,              :string, null: false, comment: '住所'
  end
end

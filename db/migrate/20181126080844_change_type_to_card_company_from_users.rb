class ChangeTypeToCardCompanyFromUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :m_users, :card_company, :integer, null: false
  end

  def down
    change_column :m_users, :card_company, :string, null: false
  end
end

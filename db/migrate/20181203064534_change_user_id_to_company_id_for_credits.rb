class ChangeUserIdToCompanyIdForCredits < ActiveRecord::Migration[5.2]
  def up
    add_column :m_credits, :m_company_id, :integer, null: false, comment: '会社ID'
    remove_column :m_credits, :m_user_id
  end

  def down
    add_column :m_credits, :m_user_id, :integer, null: false, comment: 'ユーザーID'
    remove_column :m_credits, :m_company_id
  end
end

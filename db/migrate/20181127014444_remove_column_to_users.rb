class RemoveColumnToUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :m_users, :card_company
    remove_column :m_users, :card_name
    remove_column :m_users, :card_expiration_month
  end

  def down
    add_column :m_users, :card_company,          :integer, null: false, comment: 'カード会社'
    add_column :m_users, :card_name,             :string,  null: false, comment: 'クレカ名義'
    add_column :m_users, :card_expiration_month, :date,    null: false, comment: 'クレジットカード有効期限'
  end
end

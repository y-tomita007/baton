class AddExpirationMonthToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :m_users, :card_expiration_month, :date, null: false, comment: 'クレジットカード有効期限'
  end

  def down
    remove_column :m_users, :expiration_month
  end
end

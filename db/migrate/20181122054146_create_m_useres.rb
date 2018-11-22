class CreateMUseres < ActiveRecord::Migration[5.2]
  def change
    create_table :m_users do |t|
      t.string  :name, null: false, default: '',       comment: '顧客名称'
      t.string  :email, null: false, default: '',      comment: 'メールアドレス'
      t.string  :card_company,                         comment: 'カード会社'
      t.string  :card_name, null: false, default: '',  comment: 'クレカ名義'
      t.string  :poccess, null: false, default: 0,     comment: 'ライセンス保有数'
      t.boolean :delete_flag, null: false, default: 0, comment: '削除フラグ'

      t.timestamps null: false
    end
  end
end

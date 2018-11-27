class CreateMCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :m_credits do |t|
      t.integer :m_user_id, null: false,               comment: 'ユーザーID'
      t.string  :name, null: false, default: '',       comment: '名義'
      t.string  :number, null: false, default: '',     comment: '識別番号(クレジット番号上4桁)'
      t.string  :company,                              comment: 'カード会社'
      t.string  :expire_on, null: false,               comment: 'クレジットカード有効期限'
      t.boolean :use_flag, null: false, default: 0,    comment: '使用フラグ'

      t.timestamps null: false
    end
  end
end

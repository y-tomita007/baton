class ChangeCommentToNameForCompanies < ActiveRecord::Migration[5.2]
  def up
    change_column_comment :m_companies, :name, '名称'
  end

  def down
    change_column_comment :m_companies, :name, '顧客名称'
  end
end

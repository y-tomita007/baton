class RenameUserToCompany < ActiveRecord::Migration[5.2]
  def change
    rename_table :m_users, :m_companies
  end
end

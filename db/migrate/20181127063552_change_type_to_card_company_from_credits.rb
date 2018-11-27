class ChangeTypeToCardCompanyFromCredits < ActiveRecord::Migration[5.2]
  def up
    change_column :m_credits, :company, :integer, null: false
  end

  def down
    change_column :m_credits, :company, :string, null: false
  end
end

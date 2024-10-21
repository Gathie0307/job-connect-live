class RenameCompanyDescrptionToCompanyDescription < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :company_descrption, :company_description
  end
end

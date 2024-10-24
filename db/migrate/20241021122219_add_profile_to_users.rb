class AddProfileToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :username, :string
    add_column :users, :company_name, :string
    add_column :users, :experience, :string
    add_column :users, :skills, :string
    add_column :users, :location, :string
    add_column :users, :employer, :boolean
    add_column :users, :education, :string
    add_column :users, :company_descrption, :string
  end
end

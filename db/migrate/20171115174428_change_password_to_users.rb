class ChangePasswordToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :password, :password_digest
    rename_column :users, :name, :username
  end
end

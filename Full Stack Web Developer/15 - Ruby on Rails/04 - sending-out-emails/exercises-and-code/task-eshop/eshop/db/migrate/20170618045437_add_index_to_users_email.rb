# File: db/migrate/20170618045437_add_index_to_users_email
#
class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :users, [:email], unique: true, name: 'users_email_uidx'
  end
end

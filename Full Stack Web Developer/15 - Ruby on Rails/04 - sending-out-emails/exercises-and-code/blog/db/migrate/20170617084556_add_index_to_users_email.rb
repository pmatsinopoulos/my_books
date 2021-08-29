# File: db/migrate/20170617084556_add_index_to_users_email.rb
#
class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :users, [:email], unique: true, name: 'users_email_uidx'
  end
end

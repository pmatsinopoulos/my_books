# File: db/migrate/20170726050032_add_locale_to_users.rb
#
class AddLocaleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :locale, :string, limit: 2, default: 'en', null: false
  end
end

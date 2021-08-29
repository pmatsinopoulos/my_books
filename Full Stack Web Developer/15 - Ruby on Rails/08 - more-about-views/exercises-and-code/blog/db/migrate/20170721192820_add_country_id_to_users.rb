# File: db/migrate/20170721192820_add_country_id_to_users.rb
#
class AddCountryIdToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.references :country, foreign_key: {name: 'users_country_fk'}, index: {name: 'users_country_idx'}
    end
  end
end

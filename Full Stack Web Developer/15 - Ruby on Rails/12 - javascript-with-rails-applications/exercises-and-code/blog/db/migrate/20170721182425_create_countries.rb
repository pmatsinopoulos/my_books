# File: db/migrate/20170721182425_create_countries.rb
#
class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :alpha_2_code, null: false, limit: 2
      t.string :name, null: false # we will be storing the country name downcase.

      t.timestamps
    end

    add_index :countries, [:alpha_2_code], unique: true, name: 'countries_alpha_2_code_uidx'
    add_index :countries, [:name], unique: true, name: 'countries_name_uidx'

    reversible do |dir|
      dir.up do
        require 'csv'

        file_path = File.join(File.expand_path('..', __FILE__), '..', 'countries.csv')
        CSV.foreach(file_path) do |row|
          # _gsub_ below: making any single quote that is part of the value to be two single quotes. E.g. "Côte d'Ivoire" becomes "Côte d''Ivoire"
          # so that the _insert into_ command later on, which takes the _values_ enclosed in single quotes will not fail.

          alpha_2_code = row[0].gsub(/'/, "''")
          name = row[1].gsub(/'/, "''").downcase # Storing downcase so that we can compare without worrying about case sensitivity.
          execute <<-SQL
            insert into countries (alpha_2_code, name, created_at, updated_at) values ('#{alpha_2_code}', '#{name}', current_timestamp, current_timestamp)
          SQL
        end
      end
    end
  end
end

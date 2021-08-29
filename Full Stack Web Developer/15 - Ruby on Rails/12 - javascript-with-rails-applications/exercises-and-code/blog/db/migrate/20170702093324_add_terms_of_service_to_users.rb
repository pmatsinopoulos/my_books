# File: db/migrate/20170702093324_add_terms_of_service_to_users.rb
#
class AddTermsOfServiceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :terms_of_service, :boolean, default: false, null: false

    reversible do |direction|
      direction.up do
        say_with_time('Setting terms of service to true for all users') do
          User.reset_column_information
          User.find_each do |user|
            user.terms_of_service = true
            user.save!
          end
        end
      end
    end
  end
end

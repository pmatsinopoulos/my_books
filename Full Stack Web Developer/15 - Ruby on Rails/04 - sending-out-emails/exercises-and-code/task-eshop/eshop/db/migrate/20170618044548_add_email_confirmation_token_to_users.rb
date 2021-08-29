require 'securerandom'

class AddEmailConfirmationTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email_confirmation_token, :string

    # We need to run a data migration for existing Users
    User.reset_column_information

    User.find_each do |user|
      user.update_column(:email_confirmation_token, SecureRandom.urlsafe_base64)
    end
  end
end

# File: app/models/sign_in.rb
#
class SignIn
  include ActiveModel::Model

  attr_accessor :email, :password

  validates :email, presence: true
  validates :password, presence: true
  validate :authenticate

  def sign_in
    return false unless valid?

    user
  end

  private

  attr_reader :user

  def authenticate
    return unless email.present? && password.present?

    @user = User.find_by_email(email.downcase).try(:authenticate, password)

    unless @user
      error_message = 'Wrong Credentials!'
      errors[:email] << error_message
      errors[:password] << error_message
    end
  end
end

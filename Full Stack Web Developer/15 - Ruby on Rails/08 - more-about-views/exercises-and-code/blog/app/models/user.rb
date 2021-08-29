# File app/models/user.rb
#
class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  belongs_to :country, optional: true

  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :email, format: {with: /\A\S+@\S+\.\S+\z/, message: 'is not valid email'}
  validates :terms_of_service, acceptance: true

  before_create :generate_email_confirmation_token

  def email_confirmed?
    !email_confirmation_token.present?
  end

  def confirm_email_address
    self.email_confirmation_token = nil
    save
  end

  def can_write_article?(article)
    article.user.id == id
  end

  private

  def generate_email_confirmation_token
    self.email_confirmation_token = SecureRandom.urlsafe_base64
  end
end


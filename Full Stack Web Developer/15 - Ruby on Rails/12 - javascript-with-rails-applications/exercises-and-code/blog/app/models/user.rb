# File app/models/user.rb
#
class User < ApplicationRecord
  DEFAULT_TIME_ZONE = Rails.application.config.time_zone

  has_many :articles, dependent: :destroy
  belongs_to :country, optional: true

  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/, message: 'is not valid email' }
  validates :terms_of_service, acceptance: true
  validates :locale, inclusion: { in: I18n.available_locales.map(&:to_s) }
  validates :time_zone, inclusion: { in: ActiveSupport::TimeZone.all.map(&:name) }

  before_validation :set_time_zone
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

  def set_time_zone
    self.time_zone = DEFAULT_TIME_ZONE unless time_zone.present?
  end
end


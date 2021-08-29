# File: app/controllers/application_controller.rb
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user
  before_action :set_locale
  around_action :set_user_time_zone

  helper_method :current_user

  private

  def current_user
    User.find_by_id(session[:user_id])
  end

  def redirect_if_signed_in
    if current_user
      flash[:warning] = 'Already Signed In!'
      redirect_to root_url
    end
  end

  def authenticate_user
    redirect_to sign_in_url(return_to: request.path) unless current_user
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = current_user.locale and return if current_user

    locale_requested = params[:locale]
    I18n.locale = locale_requested and return if locale_requested && locale_requested.to_sym.in?(I18n.available_locales)

    locale_requested = accept_language_locale
    I18n.locale = locale_requested and return if locale_requested && locale_requested.to_sym.in?(I18n.available_locales)

    I18n.locale = I18n.default_locale
  end

  def accept_language_locale
    accept_language = request.env['HTTP_ACCEPT_LANGUAGE']
    return if accept_language.blank?
    accept_language.scan(/^[a-z]{2}/).first
  end

  def set_user_time_zone(&block)
    if current_user.nil?
      yield
    else
      Time.use_zone(current_user.time_zone, &block)
    end
  end
end

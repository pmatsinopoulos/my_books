# File: app/controllers/users_controller.rb
#
class UsersController < ApplicationController
  skip_before_action :set_locale, only: [:update_locale, :update_time_zone]

  def update_locale
    locale_requested = params[:locale]
    if locale_requested.present? && locale_requested.to_sym.in?(I18n.available_locales)
      current_user.update_attribute(:locale, locale_requested)
    end

    referer = request.headers['Referer']
    if referer
      url_to_redirect_to = Rails.application.routes.recognize_path(referer).merge({locale: params[:locale]})
    else
      url_to_redirect_to = root_url(locale: params[:locale])
    end

    redirect_to url_to_redirect_to
  end

  def update_time_zone
    time_zone = params[:time_zone]
    if time_zone.present? && time_zone.in?(ActiveSupport::TimeZone.all.map(&:name))
      current_user.update_attribute(:time_zone, time_zone)
    end

    redirect_back(fallback_location: root_url)
  end
end

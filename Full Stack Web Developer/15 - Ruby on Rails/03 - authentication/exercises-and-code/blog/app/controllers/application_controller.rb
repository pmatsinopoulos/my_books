# File: app/controllers/application_controller.rb
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user

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
end

# File: app/controllers/welcome_controller.rb
#
class WelcomeController < ApplicationController
  skip_before_action :authenticate_user
end

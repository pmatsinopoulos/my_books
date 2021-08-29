# File: app/controllers/hello_controller.rb
#
class HelloController < ApplicationController
  skip_before_action :authenticate_user

  def respond
    render plain: 'World!'
  end
end

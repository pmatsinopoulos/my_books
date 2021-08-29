# File: app/controllers/sign_up_controller.rb
#
class SignUpController < ApplicationController
  skip_before_action :authenticate_user
  before_action :redirect_if_signed_in

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:success] = 'You have successfully signed up!'
      redirect_to root_url
    else
      @user = user
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


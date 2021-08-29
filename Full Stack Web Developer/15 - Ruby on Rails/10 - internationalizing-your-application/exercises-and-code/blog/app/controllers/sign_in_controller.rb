# File app/controllers/sign_in_controller.rb
#
class SignInController < ApplicationController
  skip_before_action :authenticate_user, except: :destroy
  before_action :redirect_if_signed_in, only: [:new, :create]

  def new
    @sign_in = SignIn.new
  end

  def create
    sign_in = SignIn.new(sign_in_params)
    if user = sign_in.sign_in
      session[:user_id] = user.id
      flash[:success] = 'You have successfully sign in!'
      redirect_to params[:return_to] || root_url
    else
      @sign_in = sign_in
      render :new, status: :unauthorized
    end
  end

  def destroy
    if current_user
      session.clear
    else
      flash[:warning] = 'Not Signed In!'
    end
    redirect_to root_url
  end

  private

  def sign_in_params
    params.require(:sign_in).permit(:email, :password)
  end
end

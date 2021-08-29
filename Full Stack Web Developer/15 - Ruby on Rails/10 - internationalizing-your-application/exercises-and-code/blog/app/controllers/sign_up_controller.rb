# File: app/controllers/sign_up_controller.rb
#
class SignUpController < ApplicationController
  skip_before_action :authenticate_user, except: [:confirm_email_address_resend]
  before_action :redirect_if_signed_in, except: [:confirm_email_address, :confirm_email_address_resend]

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      send_email_to_confirm_their_email_address(user)
      flash[:success] = 'You have successfully signed up! Please, confirm your email address. We just sent you out an email with a link to do so!'
      redirect_to root_url
    else
      @user = user
      render :new, status: :unprocessable_entity
    end
  end

  def confirm_email_address
    user = User.find_by_email_and_email_confirmation_token!(params[:email], params[:email_confirmation_token])
    if user.confirm_email_address
      flash[:success] = 'You have successfully confirmed your email address!'
    else
      flash[:error] = 'Something went wrong and we cannot confirm your email address!'
    end
    redirect_to root_url
  end

  def confirm_email_address_resend
    if current_user.email_confirmed?
      flash[:warning] = 'Your email is already confirmed!'
    else
      send_email_to_confirm_their_email_address(current_user)
      flash[:success] = 'Please, confirm your email address. We just sent you out an email with a link to do so!'
    end
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :terms_of_service, :country_id)
  end

  def send_email_to_confirm_their_email_address(user)
    UserMailer.ask_for_email_confirmation(user.id).deliver
  end
end


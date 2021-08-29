# File: app/mailers/user_mailer.rb
#
class UserMailer < ApplicationMailer
  def ask_for_email_confirmation(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: 'TCB Blog: Please, Confirm Your Email Address'
    )
  end
end

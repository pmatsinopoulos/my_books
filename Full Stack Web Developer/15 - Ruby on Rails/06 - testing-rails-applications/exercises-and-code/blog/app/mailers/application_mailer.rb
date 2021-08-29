# File: app/mailers/application_mailer.rb
#
class ApplicationMailer < ActionMailer::Base
  default from: 'support@techcareerbooster.com'
  layout 'mailer'
end

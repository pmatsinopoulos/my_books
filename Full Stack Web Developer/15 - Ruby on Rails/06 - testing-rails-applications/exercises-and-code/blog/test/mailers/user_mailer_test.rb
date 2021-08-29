# File: test/mailers/user_mailer_test.rb
#
class UserMailerTest < ActionMailer::TestCase
  test 'ask for email confirmation' do
    user = users(:peter)
    email = UserMailer.ask_for_email_confirmation(user.id)

    assert_difference "ActionMailer::Base.deliveries.size", 1 do
      email.deliver
    end

    assert_equal ['support@techcareerbooster.com'], email.from
    assert_equal [user.email], email.to
    assert_equal 'TCB Blog: Please, Confirm Your Email Address', email.subject
    assert email.html_part.body.to_s.include?('Please, confirm your email address by clicking on this link here')
  end
end

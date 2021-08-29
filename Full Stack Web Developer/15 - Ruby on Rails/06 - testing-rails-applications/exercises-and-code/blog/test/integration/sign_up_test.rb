# File: test/integration/sign_up_test.rb
#
require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest
  test 'sign up happy path' do
    email = "#{SecureRandom.hex}@mailinator.com"
    test_password = '12345678'

    # 1. send a GET request to the sign up path
    get sign_up_path
    assert_response :success

    assert_select 'input[name="user[email]"]'
    assert_select 'input[name="user[password]"]'
    assert_select 'input[name="user[password_confirmation]"]'

    # 2. send a POST request to the sign up path, and follow the redirect
    post sign_up_path, params: {user: {email: email, password: test_password, password_confirmation: test_password}}
    assert_response :redirect

    follow_redirect!
    assert_response :success

    # 3. check now what is inside the HTML content
    assert_select '.alert.alert-success', /You have successfully signed up! Please, confirm your email address\. We just sent you out an email with a link to do so!/
  end

  test 'email to confirm email address is sent out on sign up' do
    email = "#{SecureRandom.hex}@mailinator.com"
    test_password = '12345678'

    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post sign_up_path, params: {user: {email: email, password: test_password, password_confirmation: test_password}}
    end

    email_sent = ActionMailer::Base.deliveries.last
    assert_equal [email], email_sent.to
  end
end

# File: test/system/sign_up_test.rb
#
require 'application_system_test_case'

class SignUpTest < ApplicationSystemTestCase
  test 'sign up happy path' do
    email = "#{SecureRandom.hex}@mailinator.com"
    test_password = '12345678'

    visit root_url

    click_link 'Sign Up'

    fill_in 'Email', with: email
    fill_in 'Password', with: test_password
    fill_in 'Password confirmation', with: test_password
    check 'I accept the above Terms of Service'

    click_button 'Sign Up'

    assert_selector '.alert.alert-success', text: 'You have successfully signed up! Please, confirm your email address. We just sent you out an email with a link to do so!'
  end
end
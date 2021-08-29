# File: spec/integration/sign_up_spec.rb
#
require 'rails_helper'

describe 'Sign Up Test' do
  it 'sign up happy path' do
    email = "#{SecureRandom.hex}@mailinator.com"
    test_password = '12345678'

    # 1. send a GET request to the sign up path
    get sign_up_path
    expect(response).to be_success

    assert_select 'input[name="user[email]"]'
    assert_select 'input[name="user[password]"]'
    assert_select 'input[name="user[password_confirmation]"]'

    # 2. send a POST request to the sign up path, and follow the redirect
    post sign_up_path, params: {user: {email: email, password: test_password, password_confirmation: test_password, terms_of_service: true}}
    expect(response).to be_redirect

    follow_redirect!
    expect(response).to be_success

    # 3. check now what is inside the HTML content
    assert_select '.alert.alert-success', /You have successfully signed up! Please, confirm your email address\. We just sent you out an email with a link to do so!/
  end

  it 'email to confirm email address is sent out on sign up' do
    email = "#{SecureRandom.hex}@mailinator.com"
    test_password = '12345678'

    expect do
      post sign_up_path, params: {user: {email: email, password: test_password, password_confirmation: test_password, terms_of_service: true}}
    end.to change {ActionMailer::Base.deliveries.size}.by(1)

    email_sent = ActionMailer::Base.deliveries.last
    expect(email_sent.to).to eq([email])
  end
end

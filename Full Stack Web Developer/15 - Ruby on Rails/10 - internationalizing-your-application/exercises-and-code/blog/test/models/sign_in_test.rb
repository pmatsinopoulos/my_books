require 'test_helper'

class SignInTest < ActiveSupport::TestCase
  test 'should not be valid without email' do
    sign_in = build(:sign_in, email: nil)

    assert_not sign_in.valid?
    assert_includes sign_in.errors[:email], "can't be blank"
  end

  test 'should not be valid without password' do
    sign_in = build(:sign_in, password: nil)

    assert_not sign_in.valid?
    assert_includes sign_in.errors[:password], "can't be blank"
  end

  test 'should authenticate email and password against the user with these credentials' do
    password = '12345678'
    peter = create(:user, password: password)
    sign_in = build(:sign_in, email: peter.email, password: password)

    assert_equal sign_in.sign_in, peter
  end

  test 'should not authenticate email and password if password does not correspond to email' do
    peter = create(:user)
    sign_in = build(:sign_in, email: peter.email, password: SecureRandom.hex)

    assert_not sign_in.sign_in
    assert_includes sign_in.errors[:email], 'Wrong Credentials!'
    assert_includes sign_in.errors[:password], 'Wrong Credentials!'
  end

end

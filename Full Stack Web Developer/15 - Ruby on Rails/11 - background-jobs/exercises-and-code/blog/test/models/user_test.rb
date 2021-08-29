# File: test/models/user_test.rb
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not save user without email' do
    user = build(:user, email: nil)

    assert_not user.save
    assert_includes user.errors[:email], "can't be blank"
  end

  test 'generates email confirmation token' do
    # setup
    user = build(:user)

    assert user.email_confirmation_token.blank?

    # fire
    user.save!

    # check results
    assert_not user.email_confirmation_token.blank?
  end

  test 'cannot have an email that is already used' do
    peter = users(:peter)

    another_user = build(:user, email: peter.email)

    assert_not another_user.save

    assert_includes another_user.errors[:email], 'has already been taken'
  end

  test 'cannot have an email that is already used even with different case' do
    peter = users(:peter)

    another_user = build(:user, email: peter.email.upcase)

    assert_not_equal another_user.email, peter.email

    assert_not another_user.save

    assert_includes another_user.errors[:email], 'has already been taken'
  end

  test 'user has email confirmed if there is no email confirmation token' do
    peter = users(:peter)

    assert_nil peter.email_confirmation_token

    assert peter.email_confirmed?
  end

  test 'user does not have email confirmed if there is email confirmation token' do
    peter = users(:peter)

    peter.email_confirmation_token = SecureRandom.urlsafe_base64

    assert_not peter.email_confirmed?
  end

  test 'user can write an Article if it is their own Article' do
    peter = users(:peter)
    article = create(:article, user: peter)
    assert peter.can_write_article?(article)
  end

  test 'user cannot write an Article if it is not their own Article' do
    peter = users(:peter)
    article = create(:article)
    assert_not_equal(article.user, peter)

    assert_not peter.can_write_article?(article)
  end
end

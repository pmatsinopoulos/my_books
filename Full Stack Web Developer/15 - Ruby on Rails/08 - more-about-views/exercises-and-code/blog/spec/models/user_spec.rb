# File spec/models/user_spec.rb
#
require 'rails_helper'

describe User do
  fixtures :users

  it 'should not save user without email' do
    user = build(:user, email: nil)

    expect(user.save).to eq(false)
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'generates email confirmation token' do
    # setup
    user = build(:user)

    expect(user.email_confirmation_token).to be_blank

    # fire
    user.save!

    # check results
    expect(user.email_confirmation_token).not_to be_blank
  end

  it 'cannot have an email that is already used' do
    peter = users(:peter)

    another_user = build(:user, email: peter.email)

    expect(another_user.save).to eq(false)

    expect(another_user.errors[:email]).to include("has already been taken")
  end

  it 'cannot have an email that is already used even with different case' do
    peter = users(:peter)

    another_user = build(:user, email: peter.email.upcase)

    expect(another_user.email).not_to eq(peter.email)

    expect(another_user.save).to eq(false)

    expect(another_user.errors[:email]).to include('has already been taken')
  end

  it 'user has email confirmed if there is no email confirmation token' do
    peter = users(:peter)

    expect(peter.email_confirmation_token).to eq(nil)

    expect(peter).to be_email_confirmed
  end

  it 'user does not have email confirmed if there is email confirmation token' do
    peter = users(:peter)

    peter.email_confirmation_token = SecureRandom.urlsafe_base64

    expect(peter).not_to be_email_confirmed
  end

  it 'user can write an Article if it is their own Article' do
    peter = users(:peter)
    article = create(:article, user: peter)

    expect(peter.can_write_article?(article)).to eq(true)
  end

  it 'user cannot write an Article if it is not their own Article' do
    peter = users(:peter)
    article = create(:article)
    expect(article.user).not_to eq(peter)


    expect(peter.can_write_article?(article)).to eq(false)
  end
end

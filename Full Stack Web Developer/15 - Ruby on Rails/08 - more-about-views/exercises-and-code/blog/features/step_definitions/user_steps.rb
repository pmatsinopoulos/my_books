# File: features/step_definitions/user_steps.rb
#
Given(/^a user without email$/) do
  test_password = '12345678'
  @user = User.new(password: test_password, password_confirmation: test_password)
end

Then(/^user is not valid$/) do
  expect(@user).to be_invalid
end

Then(/^has errors on email$/) do
  expect(@user.errors[:email]).to include("can't be blank")
end

Given(/^a user with existing email$/) do
  peter = create(:user)
  @user = build(:user, email: peter.email)
end

Then(/^has errors on email about email already taken$/) do
  expect(@user.errors[:email]).to include('has already been taken')
end

Given(/^a user with existing email but different case$/) do
  peter = create(:user)
  @user = build(:user, email: peter.email.upcase)
  expect(@user.email).not_to eq(peter.email)
end

Given(/^a user with no email confirmation token$/) do
  @user = create(:user)
  @user.email_confirmation_token = nil
  @user.save!
end

Then(/^user has their email confirmed$/) do
  expect(@user.email_confirmed?).to eq(true)
end

Given(/^a user with email confirmation token$/) do
  @user = create(:user)
  expect(@user.email_confirmation_token).not_to be_nil
end

Then(/^user does not have their email confirmed$/) do
  expect(@user.email_confirmed?).to eq(false)
end

Given(/^a user with their Article$/) do
  @user = create(:user)
  @article = create(:article, user: @user)
end

Then(/^user can write this Article$/) do
  expect(@user.can_write_article?(@article)).to eq(true)
end

Given(/^another user$/) do
  @another_user = create(:user)
end

Then(/^other user cannot write the Article of the first user$/) do
  expect(@another_user.can_write_article?(@article)).to eq(false)
end


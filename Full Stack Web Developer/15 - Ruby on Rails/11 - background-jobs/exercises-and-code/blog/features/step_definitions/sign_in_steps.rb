Given(/^sign in does not have email$/) do
  @sign_in = build(:sign_in, email: nil)
end

Then(/^sign in is not valid$/) do
  expect(@sign_in).to be_invalid
end

Then(/^sign in has errors on email about not being present$/) do
  expect(@sign_in.errors[:email]).to include("can't be blank")
end

Given(/^sign in does not have password$/) do
  @sign_in = build(:sign_in, password: nil)
end

Then(/^sign in has errors on password about not being present$/) do
  expect(@sign_in.errors[:password]).to include("can't be blank")
end

Given(/^a user$/) do
  @password = '12345678'
  @user = create(:user, password: @password)
end

Given(/^sign in has email and password corresponding to user credentials$/) do
  @sign_in = build(:sign_in, email: @user.email, password: @password)
end

Then(/^sign in authenticates user$/) do
  expect(@sign_in.sign_in).to eq(@user)
end

Given(/^sign in has the email of user but other password$/) do
  @sign_in = build(:sign_in, email: @user.email, password: SecureRandom.hex)
end

Then(/^sign in does not authenticate user$/) do
  expect(@sign_in.sign_in).to eq(false)
end

Then(/^sign in has errors on email and password for wrong credentials$/) do
  expect(@sign_in.errors[:email]).to include('Wrong Credentials!')
  expect(@sign_in.errors[:password]).to include('Wrong Credentials!')
end

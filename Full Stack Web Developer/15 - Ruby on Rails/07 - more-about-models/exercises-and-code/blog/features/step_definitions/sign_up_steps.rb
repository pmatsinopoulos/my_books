# File: features/step_definitions/sign_up_steps.rb
#
Given(/^I visit the Web application$/) do
  visit root_url
end

Given(/^I decide to sign up$/) do
  click_link 'Sign Up'
end

When(/^I fill in my email and password$/) do
  fill_in 'Email', with: "#{SecureRandom.hex}@gmail.com"
  fill_in 'Password', with: '12345678'
  fill_in 'Password confirmation', with: '12345678'
end

And(/^I accept the terms of service$/) do
  check 'I accept the above Terms of Service'
end

When(/^I submit my details$/) do
  click_button 'Sign Up'
end

Then(/^I can see a confirmation message that I have signed up successfully$/) do
  expect(page).to have_selector('.alert.alert-success', text: 'You have successfully signed up! Please, confirm your email address. We just sent you out an email with a link to do so!')
end


Given(/^I visit the new Article page$/) do
  visit new_article_path
end

Then(/^I am redirected to the sign in page$/) do
  expect(page.current_path).to eq(sign_in_path)
end

Given(/^I visit the sign in page$/) do
  visit sign_in_path
end

Given(/^I sign in$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password
  click_button 'Sign In'
end

Given(/^I fill in the title with "([^"]*)"$/) do |title|
  fill_in 'Title', with: title
end

Given(/^I fill in the text with "([^"]*)"$/) do |text|
  fill_in 'Text', with: text
end

When(/^I submit the new Article details$/) do
  click_button 'Create Article'
end

Then(/^I am being sent to the newly created Article edit page$/) do
  expect(page.current_path).to eq(edit_article_path(Article.last))
end

Then(/^I see a success message that my Article has been successfully created$/) do
  assert_selector '.alert.alert-success', text: 'Article has been created!'
end


And(/^an Article that belongs to this user$/) do
  @article = create(:article, user: @user)
end

Given(/^I visit the edit Article page$/) do
  visit edit_article_path(@article)
end

When(/^I visit the edit page of the Article of another user$/) do
  other_article = create(:article)
  expect(other_article.user).not_to eq(@user)

  visit edit_article_path(other_article)
end

Then(/^I am redirected to the root page of the site$/) do
  expect(page.current_path).to eq(root_path)
end

When(/^I visit the edit page of my Article$/) do
  visit edit_article_path(@article)
end

Then(/^I see the title holding the value of the title of my Article$/) do
  expect(find_field('Title').value).to eq(@article.title)
end

Then(/^I see the text holding the value of the text of my Article$/) do
  expect(find_field('Text').value).to eq(@article.text)
end

When(/^I update the title to be "([^"]*)"$/) do |title|
  fill_in 'Title', with: title
end

When(/^I update the text to be "([^"]*)"$/) do |text|
  fill_in 'Text', with: text
end

When(/^I submit the new details of my Article$/) do
  click_button 'Update Article'
end

Then(/^I see a success message that my article has been updated successfully$/) do
  assert_selector '.alert.alert-success', text: 'Article has been updated!'
end

Then(/^I am on the edit page of my Article$/) do
  expect(page.current_path).to eq(edit_article_path(@article))
end

Then(/^I can see that my Article has title "([^"]*)"$/) do |title|
  expect(find_field('Title').value).to eq(title)
end

Then(/^I can see that my Article has text "([^"]*)"$/) do |text|
  expect(find_field('Text').value).to eq(text)
end


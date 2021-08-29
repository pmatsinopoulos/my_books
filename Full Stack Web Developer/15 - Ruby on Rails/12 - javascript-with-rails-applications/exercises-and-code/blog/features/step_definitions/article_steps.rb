Given(/^an article without user$/) do
  @article = build(:article, user: nil)
end

Then(/^article is not valid$/) do
  expect(@article).to be_invalid
end

Then(/^article has error on user about not being present$/) do
  expect(@article.errors[:user]).to include("can't be blank")
end

Given(/^an article without title$/) do
  @article = build(:article, title: nil)
end

Then(/^article has error on title about not being present$/) do
  expect(@article.errors[:title]).to include("can't be blank")
end

Given(/^an article without text$/) do
  @article = build(:article, text: nil)
end

Then(/^article has error on text about not being present$/) do
  expect(@article.errors[:text]).to include("can't be blank")
end

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'should be invalid without a user' do
    article = build(:article, user: nil)

    assert_not article.valid?
    assert_includes article.errors[:user], "can't be blank"
  end

  test 'should be invalid without a title' do
    article = build(:article, title: nil)

    assert_not article.valid?
    assert_includes article.errors[:title], "can't be blank"
  end

  test 'should be invalid without a text' do
    article = build(:article, text: nil)

    assert_not article.valid?
    assert_includes article.errors[:text], "can't be blank"
  end
end


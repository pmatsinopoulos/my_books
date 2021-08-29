require 'rails_helper'

describe Article do
  it 'should be invalid without a user' do
    article = build(:article, user: nil)

    expect(article).to be_invalid
    expect(article.errors[:user]).to include("can't be blank")
  end

  it 'should be invalid without a title' do
    article = build(:article, title: nil)

    expect(article).to be_invalid
    expect(article.errors[:title]).to include("can't be blank")
  end

  it 'should be invalid without a text' do
    article = build(:article, text: nil)

    expect(article).to be_invalid
    expect(article.errors[:text]).to include("can't be blank")
  end
end

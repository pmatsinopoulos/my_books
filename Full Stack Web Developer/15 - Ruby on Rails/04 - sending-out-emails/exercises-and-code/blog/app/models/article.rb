# File: app/models/article.rb
#
class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
end

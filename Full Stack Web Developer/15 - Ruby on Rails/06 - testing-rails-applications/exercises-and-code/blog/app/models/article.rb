# File: app/models/article.rb
#
class Article < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true
  validates :text, presence: true
end

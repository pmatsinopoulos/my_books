# File: app/models/article.rb
#
class Article < ApplicationRecord
  belongs_to :user
  has_many :articles_categories, dependent: :destroy
  has_many :categories, through: :articles_categories
  scope :programming, -> { joins(:categories).where(categories: {name: 'Programming'}) }
  enum state: [:draft, :published]

  validates :user, presence: true
  validates :title, presence: true
  validates :text, presence: true
end

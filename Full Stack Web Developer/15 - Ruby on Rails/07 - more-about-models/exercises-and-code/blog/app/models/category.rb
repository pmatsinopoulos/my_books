# File: app/models/category.rb
#
class Category < ApplicationRecord
  has_many :articles_categories, dependent: :destroy
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end

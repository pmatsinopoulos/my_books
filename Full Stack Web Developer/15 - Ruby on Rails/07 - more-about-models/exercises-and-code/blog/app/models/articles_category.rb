# File: app/models/articles_category.rb
#
class ArticlesCategory < ApplicationRecord
  belongs_to :article
  belongs_to :category
end

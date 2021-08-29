# File: app/models/book.rb
#
class Book
  include Mongoid::Document

  field :title
  field :author
  field :tags, type: Array
  embeds_many :comments
  belongs_to :publisher

  def tags_joined
    tags.join(',') rescue ''
  end

  def tags=(value)
    write_attribute(:tags, value.split(',').map(&:strip))
  end
end

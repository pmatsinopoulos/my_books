# File: app/models/comment.rb
#
class Comment
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :text

  embedded_in :book
end

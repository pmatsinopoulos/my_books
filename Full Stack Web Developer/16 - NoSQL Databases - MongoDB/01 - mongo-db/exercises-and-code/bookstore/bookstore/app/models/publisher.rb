# File: app/models/publisher.rb
#
class Publisher
  include Mongoid::Document

  field :name

  has_many :books
end


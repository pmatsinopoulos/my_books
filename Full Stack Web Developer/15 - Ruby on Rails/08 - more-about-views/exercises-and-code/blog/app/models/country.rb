# File: app/models/country.rb
#
class Country < ApplicationRecord
  has_many :users

  validates :alpha_2_code, presence: true, uniqueness: {case_sensitive: false}
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end

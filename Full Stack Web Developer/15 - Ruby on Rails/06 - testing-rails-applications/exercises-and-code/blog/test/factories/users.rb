# File: test/factories/users.rb
#
FactoryGirl.define do
  factory :user do
    email { "#{SecureRandom.hex}@mailinator.com" }
    password '12345678'
  end
end

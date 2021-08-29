# File: test/factories/users.rb
#
FactoryGirl.define do
  factory :user do
    email { "#{SecureRandom.hex}@mailinator.com" }
    password '12345678'
    terms_of_service true
  end
end

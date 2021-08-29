FactoryGirl.define do
  factory :sign_in do
    email { "#{SecureRandom.hex}@gmail.com" }
    password '12345678'
  end
end

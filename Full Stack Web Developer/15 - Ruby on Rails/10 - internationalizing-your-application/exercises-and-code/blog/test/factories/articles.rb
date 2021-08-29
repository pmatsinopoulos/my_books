FactoryGirl.define do
  factory :article do
    association :user
    title { SecureRandom.hex }
    text { SecureRandom.hex }
  end
end

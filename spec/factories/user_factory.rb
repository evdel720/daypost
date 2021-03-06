FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@daypost.com" }
    password "password"

    trait :admin do
      admin true
    end
  end
end

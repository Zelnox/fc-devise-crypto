FactoryGirl.define do
  sequence(:email) { |n| "duder_#{SecureRandom.hex(2)}@example.com" }

  factory :dude do
    email { generate(:email) }
    password "12345678"
  end
end

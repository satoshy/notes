FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    birthdate ""
    phone Faker::PhoneNumber.cell_phone
    sequence(:username) { |n| "username#{n}" }
    sequence(:email) { |n| "person#{n}@example.com" }
    password "password"
    password_confirmation "password"
    created_at Time.now
  end
end
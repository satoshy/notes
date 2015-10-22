FactoryGirl.define do
  factory :user do
    first_name ""
    last_name ""
    username {}
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end 
end
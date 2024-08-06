FactoryBot.define do
  factory :user do
   name  { Faker::Internet.name }
   email { Faker::Internet.email }
   end
 end
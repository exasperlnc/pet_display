FactoryBot.define do
  factory :user do
   name  { Faker::Name.first_name }
   email { Faker::Internet.email }
   end
 end

 FactoryBot.define do
  factory :pet do
   name    { Faker::Internet.name }
   species { Faker::Creature::Animal.name }
   age     { Faker::Number.number(digits: 2) }
   user    { create(:user) }
   end
 end
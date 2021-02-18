FactoryBot.define do
  factory :objective do
    user_name   {Faker::Name.initials(number: 2)}
    category_id  {2}
    hobit_id     {2}
    one_day     {Faker::Name.initials(number: 6)}
    action_plan {Faker::Name.initials(number: 10)}
    hobituation {Faker::Name.initials(number: 6)}
    merit       {Faker::Lorem.sentence}
    demerit     {Faker::Lorem.sentence}
  end
end

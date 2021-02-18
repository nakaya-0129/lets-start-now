FactoryBot.define do
  factory :aggregate do
    result_comment    {Faker::Name.initials(number: 6)}
    start_day         {'2020/02/14'}
    ability_id        {2}
    period_id         {2}
    self_compliment   {Faker::Lorem.sentence}
    action_point      {100}
  end
end

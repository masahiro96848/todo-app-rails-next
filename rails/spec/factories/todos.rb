FactoryBot.define do
  factory :todo do
    user
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
  end
end

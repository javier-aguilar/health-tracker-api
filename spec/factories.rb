# spec/factories.rb
FactoryBot.define do
    factory(:user) do
      username { Faker::Internet.username }
      name { Faker::Name.name }
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end

    factory(:profile) do
      association :user
      height { Faker::Number.within(range: 1..400) }
      weight { Faker::Number.within(range: 1..400) }
      age { Faker::Number.within(range: 1..100) }
      gender { Faker::Gender.type }
      activity_level { Faker::Verb.base }
    end

    factory(:food_log) do
      association :user
      fat { Faker::Number.within(range: 1..400) }
      carbs { Faker::Number.within(range: 1..400) }
      protein { Faker::Number.within(range: 1..400) }
      calories { Faker::Number.within(range: 1..10000) }
    end
  end

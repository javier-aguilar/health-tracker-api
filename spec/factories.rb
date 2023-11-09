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
      height { Faker::Number.within(range: 1..10) }
      weight { Faker::Number.within(range: 1..400) }
      age { Faker::Number.within(range: 1..100) }
      gender { Faker::Gender.type }
      activity_level { Faker::Verb.base }
      daily_calorie_intake { Faker::Number.within(range: 1..1000) }
    end
  end

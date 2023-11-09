# spec/factories.rb
FactoryBot.define do
    factory(:user) do
      username { Faker::Internet.username }
      name { Faker::Name.name }
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end
  end
  
name = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
FactoryBot.define do
  factory :user do
    name { name }
    sequence(:email) { |n| "#{name.downcase}#{n}@gmail.com" }
    password { 'password' }
    password_confirmation { 'password' }
    confirmed_at { DateTime.now }
  end
end

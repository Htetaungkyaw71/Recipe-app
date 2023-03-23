FactoryBot.define do
  factory :recipee do
    name { 'peanut butter' }
    preparation_time { 1 }
    cooking_time { 1 }
    description { 'good' }
    public { true }
    user_id { 1 }
  end
end

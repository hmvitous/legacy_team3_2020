FactoryBot.define do
    factory :user do
        name { 'John' }
        email { user.email }
        password { '12345678' }
    end
end
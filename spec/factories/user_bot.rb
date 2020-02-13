FactoryBot.define do
    factory :user do
        name { "Name" }
        email { "name@mail.com" }
        password { "12345678" }
    end
end
FactoryBot.define do
    factory :user do
        name { "Test" }
        email { "test@mail.com" }
        password { "12345678" }
    end
end
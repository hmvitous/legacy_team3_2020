require 'rails_helper'
require 'pry-byebug'

feature 'User can create' do
        before do
            visit conversation_path
            click_on "Login"
            fill_in "user_email", with: "name@mail.com"
            fill_in "user_password", with: "12345678"
            click_on "Log in"
        end
        
    context 'an email' do
        visit conversation_path
        binding.pry
        select(recipients[])
        fill_in 'Subject', with: 'Hello'
        fill_in 'Message', with: 'Test Message'

    end 
end
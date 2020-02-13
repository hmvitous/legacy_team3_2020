require 'rails_helper'
require 'pry-byebug'

feature 'User can create' do
        before do
            visit user_session_path
            fill_in "user_email", with: "name@mail.com"
            fill_in "user_password", with: "12345678"
            click_on "Log in"
        end
        
    it 'an email' do
        click_on 'Inbox'
        click_on 'Compose'
        # choose '#'
        fill_in 'Subject', with: 'Hello'
        fill_in 'Message', with: 'Test Message'
        click_on "Send Message"

    end 
end
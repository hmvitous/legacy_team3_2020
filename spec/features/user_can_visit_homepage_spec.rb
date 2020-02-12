require 'rails_helper'

feature 'Can visit homepage' do
    context 'with log-in, sign-up and home buttons' do
        before do 
            visit root_path
        end

        it 'displays name of the application' do
            expect(page).to have_content 'Craft Academy Mailboxer'
        end

        # it 'displays sign-up button' do

        # end
    end
end
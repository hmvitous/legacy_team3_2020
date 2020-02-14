require 'pry'

feature 'User can' do
    let(:sender){ FactoryBot.create(:user, name: 'John', email: 'john@mail.com', password: '12345678') }
    let(:reciever){ FactoryBot.create(:user, name: 'Jane', email: 'reciever@mail.com', password: '87654321')}

    before do
        sender.send_message(reciever, 'Hi Jane', 'First Message')
    end
    
    it 'should have 1 new message in the inbox' do
        count = reciever.mailbox.inbox.count
        expect(count).to eq 1
    end
    #     visit root_path
    #     click_on "Login"
    #     fill_in "user_email", with: registered_user.email
    #     fill_in "user_password", with: "12345678"
    #     click_on "Log in"
    # end
        
    # it 'create an email' do
    #     click_on 'Inbox'
    #     click_on 'Compose'
    #     select "John Doe", from: 'Recipients'
    #     fill_in 'Subject', with: 'Hello'
    #     fill_in 'Type your message here', with: 'Test Message'
    #     # click_on "Send Message"
    # end 
end
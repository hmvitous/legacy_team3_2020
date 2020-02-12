require 'rails_helper'

RSpec.describe ConversationsController, type: :controller do
    # describe 'DB table' do
    #     it { is_expected.to have_db_column :id}
    #     it { is_expected.to have_db_column :subject}
    # end

    describe 'Factory' do
        it 'should have valid Factory' do
            expect(FactoryBot.create(:user)).to be_valid
        end
    end
end
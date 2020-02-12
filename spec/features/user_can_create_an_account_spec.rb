require 'rails_helper'

feature 'User can create an account' do  
  before do
    visit root_path
    
  end

  it 'When sign up is clicked the sign up form shows' do
    click_on 'Sign up'
    gets new_user_registration_path('Sign up')
  end






end
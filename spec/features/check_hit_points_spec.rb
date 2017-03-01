require 'spec_helper'

feature 'Hit points' do
  scenario 'checking hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Bernard'
    click_button 'Submit'
    expect(page).to have_content 'Bernard 10'
  end
end

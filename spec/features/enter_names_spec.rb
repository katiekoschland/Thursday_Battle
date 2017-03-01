require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bernard'
    fill_in :player_2_name, with: 'Clem'
    click_button 'Submit'
    expect(page).to have_content 'Bernard vs. Clem'
  end
end

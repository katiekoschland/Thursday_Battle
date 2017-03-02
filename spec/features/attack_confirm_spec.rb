require 'spec_helper'

feature 'attack and confirm' do
  scenario 'attack and confirm' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Bernard attacked Katie"
  end
end

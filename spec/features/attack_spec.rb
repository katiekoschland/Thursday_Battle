require 'spec_helper'
require 'player'

feature 'attack and confirm' do
  scenario 'attack and confirm' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Bernard attacked Katie"
  end

feature 'attacking' ,focus:true do
  scenario 'attack to reduce Player 2 points by 10' do
    sign_in_and_play
    click_button('Attack')
    # click_link 'OK'
    # expect(page).not_to have_content 'Katie: 60 HP'
    expect(page).to have_content "Katie: 50 HP"
  end
end

end

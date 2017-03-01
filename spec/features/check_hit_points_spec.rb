require 'spec_helper'

feature 'Hit points' do
  scenario 'checking hit points' do
    sign_in_and_play
    expect(page).to have_content 'Bernard 10'
  end
end

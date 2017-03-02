

feature 'Hit points' do
  scenario 'checking hit points' do
    sign_in_and_play
    expect(page).to have_content 'Bernard 60 HP'
  end
end

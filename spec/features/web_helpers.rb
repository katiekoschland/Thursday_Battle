def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Bernard'
  fill_in :player_2_name, with: 'Katie'
  click_button 'Submit'
end

feature 'Attacking' do
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Anj attacked Bob"
  end

  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "Bob: 60HP"
    expect(page).to have_content "Bob: 50HP"
  end

  scenario 'attacked by player 2 and get confirmation' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    expect(page).to have_content "Bob attacked Anj"
  end

  scenario 'reduce Player 1 hit points by 10' do
     sign_in_and_play
     click_button 'Attack'
     click_button 'OK'
     click_button 'Attack'
     click_button 'OK'
     expect(page).not_to have_content 'Anj: 60HP'
     expect(page).to have_content 'Anj: 50HP'
   end
end

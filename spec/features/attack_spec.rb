feature 'Attacking' do
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Anj attacked Bob"
  end

  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content "Bob: 60HP"
    expect(page).to have_content "Bob: 50HP"
  end
end

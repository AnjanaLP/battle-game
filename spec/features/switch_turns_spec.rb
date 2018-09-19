feature 'Switch turns' do
  scenario 'it is player 1 turn at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Anj's turn"
  end

  scenario 'it switches turn after player 1 attacks' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "Anj's turn"
    expect(page).to have_content "Bob's turn"
  end
end

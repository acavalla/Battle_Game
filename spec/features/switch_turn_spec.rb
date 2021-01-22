feature "switch turns" do
  scenario "player 1 starts" do
    sign_in_and_play
    expect(page).to have_content("Bob's turn")
  end

  scenario "next give player 2 a turn" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Bill's turn")
  end
end

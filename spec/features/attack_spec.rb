feature "attack" do
  
  scenario "get confirmation after attacking player 2" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Bill has been attacked! By Bob!")
  end

  scenario "attacks reduce HP by 10" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Bill - Hit Points: 90")
  end

end
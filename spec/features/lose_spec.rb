
feature "Lose" do

  scenario "display lose when players hp reaches 0" do
    sign_in_and_play
    19.times { click_button "Attack!" }
    expect(page).to have_content("LOSE")
  end

end

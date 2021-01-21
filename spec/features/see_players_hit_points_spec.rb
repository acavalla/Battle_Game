feature "see players' hit points" do
  scenario "when playing" do
    visit("/")
    fill_in :player1_name, with: "Bob"
    fill_in :player2_name, with: "Bill"
    click_button "Create Players"
    expect(page).to have_content("Bill - Hit Points: 100")
  end
end
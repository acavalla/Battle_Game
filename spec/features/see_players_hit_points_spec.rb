feature "see players' hit points" do
  scenario "when playing" do
    sign_in_and_play
    expect(page).to have_content("Bill - Hit Points: 100")
  end
end
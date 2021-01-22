feature "entering names" do
  scenario "on home page can fill in both players' names" do
    sign_in_and_play
    expect(page).to have_content("Bob vs. Bill")
  end
end

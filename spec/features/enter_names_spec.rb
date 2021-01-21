feature 'enter names' do

  scenario 'Two players can fill in names in a form ' do
    visit("/")
    fill_in :player1_name, with: "Bob"
    fill_in :player2_name, with: "Bill"
    click_button "Create Players"
    expect(page).to have_content("Bob vs. Bill")
  end
end

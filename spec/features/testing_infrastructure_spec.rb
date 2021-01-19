
feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'enter names' do
  scenario 'Two players can fill in names in a form ' do
    visit("/names")

    fill_in :player1_name, with: "Bob"
    fill_in :player2_name, with: "Bill"
    click_button "Create Players"
    expect(page).to have_content("Bob vs. Bill")
  end
end

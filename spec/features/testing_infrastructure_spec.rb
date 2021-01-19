
feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'enter names' do
  scenario 'players to fill in names in a form ' do
    visit('/')

    fill_in :name, with: "Bob"
    click_button "Create player"
    expect(page).to have_content("Player Bob was created!")
  end
end

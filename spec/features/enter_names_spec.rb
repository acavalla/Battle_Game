feature 'enter names' do

  scenario 'Two players can fill in names in a form ' do
    sign_in_and_play
    expect(page).to have_content("Bob vs. Bill")
  end
end

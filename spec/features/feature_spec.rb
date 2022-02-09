feature "the homepage", type: :feature do

  scenario "display a form for players to fill thier names in" do
    visit '/'
    expect(page).to have_field("player_one")
    expect(page).to have_field("player_two")
    expect(page).to have_selector("input[type=submit][value='Submit']")
  end
end

feature 'Enter names' do
  scenario "Display player names" do
    visit '/'
    fill_in :player_one, with: 'Charlotte'
    fill_in :player_two, with: 'Eddie'
    click_button 'Submit'
    expect(page).to have_content "Charlotte Eddie"
  end
end
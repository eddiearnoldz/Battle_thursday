feature 'Reduce Hit Points when a player attacks' do
  scenario "Player one attacks Player two" do
  sign_in_and_play
  click_button 'Attack!'
  expect(page).to have_content "Eddie: 50HP"
  end
end
  
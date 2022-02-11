feature 'Player One attacks Player Two' do
    scenario "Player One presses attack and gets confirmation of attack" do
      sign_in_and_play
      click_button "Attack!"
      expect(page).to have_content "Eddie was attacked by Charlotte"
    end
  end
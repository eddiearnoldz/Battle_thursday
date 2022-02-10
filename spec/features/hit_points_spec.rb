# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "player_one can view player_two's hit points" do
  scenario "submitting hit points" do
    sign_in_and_play
    expect(page).to have_content "Eddie: 60HP"
  end
end

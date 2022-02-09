feature "the homepage", type: :feature do
  scenario "displays some text saying Hello Battle!" do 
    visit '/'
    expect(page).to have_content 'Hello Battle!'
  end
  
end
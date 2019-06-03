feature "Has a main page" do
  scenario "The main page can be called" do
    visit('/')
    expect(page).to have_content("Hello World")
  end
end

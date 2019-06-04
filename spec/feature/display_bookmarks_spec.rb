feature "Display Bookmarks" do
  scenario "it diplays bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.makersacademy.com")
  end
end

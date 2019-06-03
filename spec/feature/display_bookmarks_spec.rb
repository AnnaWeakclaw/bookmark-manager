feature "Display Bookmarks" do
  scenario "it diplays bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content("http://google.co.uk")
    expect(page).to have_content("https://github.com/makersacademy/course/tree/master/bookmark_manager")
  end
end

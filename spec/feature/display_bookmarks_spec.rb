feature "Bookmarks" do
  scenario "diplays bookmarks" do
    visit('/bookmarks')
    
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.makersacademy.com")
  end

  scenario "adds a new bookmark" do
    visit('/bookmarks')
    fill_in "new_url", :with => "http://www.cheat-sheets.org/sites/sql.su/"
    click_button "Add"
    expect(page).to have_content("http://www.cheat-sheets.org/sites/sql.su/")
  end
end

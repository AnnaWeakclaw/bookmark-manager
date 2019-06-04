feature "Bookmarks" do
  scenario "diplays bookmarks" do
    visit('/bookmarks')
    
    expect(page).to have_link("Google", href:"http://www.google.com")
    expect(page).to have_link("Makers", href:"http://www.makersacademy.com")
  end

  scenario "adds a new bookmark" do
    visit('/bookmarks')
    fill_in "new_url", :with => "http://www.cheat-sheets.org/sites/sql.su/"
    fill_in "new_title", :with => "Cheat Sheet"
    click_button "Add"
    expect(page).to have_link("Cheat Sheet", href: "http://www.cheat-sheets.org/sites/sql.su/")
  end
end

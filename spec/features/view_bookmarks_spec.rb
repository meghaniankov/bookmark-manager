feature 'View Bookmarks' do
  scenario 'User can view bookmarks' do
    visit '/'
    click_link 'View Bookmarks'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    expect(page).to have_content "http://www.makersacademy.com"
    #expect(page).to have_content "http://destroyallsoftware.com"
    #expect(page).to have_content "http://www.google.com"
  end
end
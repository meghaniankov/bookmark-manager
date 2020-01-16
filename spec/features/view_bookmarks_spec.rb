feature 'View Bookmarks' do
  scenario 'User can view bookmarks' do
    visit '/'
    click_link 'View Bookmarks'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    BookmarkList.create('http://www.makersacademy.com', 'Makers')
    expect(page).to have_content "Makers"
  end
end
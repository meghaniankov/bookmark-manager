feature 'View Bookmarks' do
  scenario 'User can view bookmarks' do
    visit '/'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.create('http://www.makerstech.com', 'Makers')
    click_link 'View Bookmarks'
    expect(page).to have_content "Makers"
  end

  scenario 'User can visit bookmark link from list' do
    visit '/'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.create('http://www.facebook.com', 'Facebook')
    click_link 'View Bookmarks'
    click_link 'Facebook'
    expect(current_url).to eq('http://www.facebook.com/')
  end
end
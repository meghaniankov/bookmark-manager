feature 'View Bookmarks' do
  scenario 'User can view bookmarks' do
    visit '/'
    click_link 'View Bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
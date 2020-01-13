feature 'View Bookmarks' do
  scenario 'User can view bookmarks' do
    visit '/'
    click_link 'View Bookmarks'
    expect(page).to have_content "https://github.com/"
  end
end
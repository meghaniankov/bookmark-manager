feature 'Create Bookmark' do
  scenario 'user creates new bookmark' do
    visit '/'
    fill_in 'bookmark', :with => 'http://google.com'
    click_button 'Add Bookmark'
    expect(page).to have_content "http://google.com"
  end

end
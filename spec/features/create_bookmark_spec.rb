feature 'Create Bookmark' do
  scenario 'user creates new bookmark' do
    visit '/'
    fill_in 'bookmark', :with => 'http://google.com'
    fill_in 'title', :with => 'Google'
    click_button 'Add Bookmark'
    expect(page).to have_content "Google"
  end

end
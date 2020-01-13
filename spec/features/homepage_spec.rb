feature 'Homepage' do
  scenario 'displays Hello World on homepage' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end

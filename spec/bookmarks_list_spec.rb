describe 'BookmarksList' do
  describe '.all' do
    it 'returns array of bookmarks' do
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end
end
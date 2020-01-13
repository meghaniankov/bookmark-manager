describe 'BookmarksList' do
  describe '.all' do
    it 'returns arary of bookmarks' do
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("https://github.com/")
    end
  end
end
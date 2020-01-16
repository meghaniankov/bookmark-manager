describe 'BookmarksList' do
  describe '.all' do
    it 'returns array of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookmarkList.create('http://www.makersacademy.com', 'Makers')
      bookmarks = BookmarkList.all
      expect(bookmarks.last.url).to include("http://www.makersacademy.com")
    end
  end

  describe '.create(bookmark)' do
    it 'adds new bookmark to bookmark.all' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookmarkList.create('http://google.com', 'Google')
      bookmarks = BookmarkList.all
      expect(bookmarks.last.url).to include('http://google.com')
    end

    it 'adds new bookmark to bookmark.all' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookmarkList.create('http://google.com', 'Google')
      bookmarks = BookmarkList.all
      expect(bookmarks.last.title).to include('Google')
    end
  end

end
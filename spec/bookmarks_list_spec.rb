describe 'BookmarksList' do
  describe '.all' do
    it 'returns array of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookmarkList.create('http://www.makersacademy.com')
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  describe '.create(bookmark)' do
    it 'adds new bookmark to bookmark.all' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookmarkList.create('http://google.com')
      expect(BookmarkList.all).to include('http://google.com')
    end
    
    it 'adds new github bookmark to bookmark.all' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookmarkList.create('http://github.com')
      expect(BookmarkList.all).to include('http://github.com')
    end
  end

end
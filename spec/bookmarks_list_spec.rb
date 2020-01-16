describe 'BookmarksList' do
  describe '.all' do
    it 'returns array of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      Bookmark.create('http://www.cats.com', 'Cats')
      bookmarks = Bookmark.all
      expect(bookmarks.last.url).to include("http://www.cats.com")
    end
  end

  describe '.create(bookmark)' do
    it 'checks url of added bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmark = Bookmark.create('http://dogs.com', 'Dogs')
      expect(bookmark.first['url']).to include('http://dogs.com')
    end
  end
    it 'check title of added bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmark = Bookmark.create('http://bunnies.com', 'Bunnies')
      expect(bookmark.first['title']).to include('Bunnies')
    end
  

end
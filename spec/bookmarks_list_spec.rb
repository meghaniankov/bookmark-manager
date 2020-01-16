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
    it 'adds new bookmark to bookmark.all' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      Bookmark.create('http://dogs.com', 'Dogs')
      bookmarks = Bookmark.all
      expect(bookmarks.last.url).to include('http://dogs.com')
    end

    it 'adds new bookmark to bookmark.all' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      Bookmark.create('http://bunnies.com', 'Bunnies')
      bookmarks = Bookmark.all
      expect(bookmarks.last.title).to include('Bunnies')
    end
  end

end
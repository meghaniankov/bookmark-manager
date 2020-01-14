describe 'BookmarksList' do
  describe '.all' do
    it 'returns array of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end
end
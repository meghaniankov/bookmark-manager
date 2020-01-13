require 'pg'

class BookmarkList
  def self.all
    pg_object = PG.connect(dbname: 'bookmark_manager')
    query_result = pg_object.exec('SELECT * FROM bookmarks')
    query_result.map { |bookmark| bookmark['url'] }
  end
end
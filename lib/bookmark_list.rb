require 'pg'

class BookmarkList
  def self.all
    if ENV['DATABASE'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else 
      connection = PG.connect(dbname: 'bookmark_manager')
    end 

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(bookmark)
    if ENV['DATABASE'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else 
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    length = BookmarkList.all.count
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{bookmark}');")
  end

end

require 'pg'

class BookmarkList
  def self.all
    if ENV['DATABASE'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else 
      connection = PG.connect(dbname: 'bookmark_manager')
    end 

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| BookmarkList.new(bookmark['id'], bookmark['url'], bookmark['title']) }
  end

  def self.create(url, title)
    if ENV['DATABASE'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else 
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}');")
  end

  attr_reader :id, :url, :title

  def initialize(id, url, title)
    @id = id
    @url = url
    @title = title
  end

end

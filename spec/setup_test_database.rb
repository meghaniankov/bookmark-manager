require 'pg'

p "Setting up database"

connection = PG.connect(dbname: 'bookmark_manager_test')
connection.exec("TRUNCATE bookmarks;") 


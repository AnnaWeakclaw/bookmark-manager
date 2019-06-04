require 'pg'
require 'bookmark'
def truncate_bookmarks_table
  bookmark = Bookmark.new
  connection = connection = PG.connect :dbname => "bookmark_manager_test"
  connection.exec("TRUNCATE TABLE bookmarks")

  bookmark.add('http://www.makersacademy.com')
  bookmark.add('http://www.twitter.com')
  bookmark.add('http://www.google.com')
end

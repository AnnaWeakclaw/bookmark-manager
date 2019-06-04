require 'pg'
require 'bookmark'
def truncate_bookmarks_table
  bookmark = Bookmark.new
  connection = connection = PG.connect :dbname => "bookmark_manager_test"
  connection.exec("TRUNCATE TABLE bookmarks")

  bookmark.add('http://www.makersacademy.com', "Makers")
  bookmark.add('http://www.twitter.com', "Twitter")
  bookmark.add('http://www.google.com', "Google")
end

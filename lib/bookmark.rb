
require "pg"

class Bookmark
  def self.all
    begin
      connection = PG.connect :dbname => "bookmark_manager"
      bookmarks = connection.exec "SELECT * FROM bookmarks"
      bookmarks.map do |row|
        row['url']
      end
    rescue PG::Error => e
      puts e.message
    ensure
      bookmarks.clear if bookmarks
      connection.close if connection
    end
  end
end

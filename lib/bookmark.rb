
require "pg"

class Bookmark

  def self.create
    @bookmark = Bookmark.new
  end

  def self.instance
    @bookmark
  end
  def all
    begin
      if ENV["RACK_ENV"] == "test"
        connection = PG.connect :dbname => "bookmark_manager_test"
      else
        connection = PG.connect :dbname => "bookmark_manager"
      end
      bookmarks = connection.exec "SELECT * FROM bookmarks"
      bookmarks.map do |row|
        row["url"]
      end
    rescue PG::Error => e
      puts e.message
    ensure
      bookmarks.clear if bookmarks
      connection.close if connection
    end
  end

  def add(new_url)
    begin
      if ENV["RACK_ENV"] == "test"
        connection = PG.connect :dbname => "bookmark_manager_test"
      else
        connection = PG.connect :dbname => "bookmark_manager"
      end
      bookmarks_add = connection.exec "INSERT INTO bookmarks (url) VALUES ('#{new_url}');"
    rescue PG::Error => e
      puts e.message
    ensure
      bookmarks_add.clear if bookmarks_add
      connection.close if connection
    end
  end
end

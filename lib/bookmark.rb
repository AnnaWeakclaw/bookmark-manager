
require "pg"

class Bookmark

  # def initialize(id:, url:, title:)

  # end

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
      bookmarks_hash = []
      bookmarks.map do |row|
        bookmarks_hash.push({ :url => row["url"], :title => row["title"] })
      end
      
    rescue PG::Error => e
      puts e.message
    ensure
      bookmarks.clear if bookmarks
      connection.close if connection
    end
    bookmarks_hash
  end

  def add(new_url, new_title)
    begin
      if ENV["RACK_ENV"] == "test"
        connection = PG.connect :dbname => "bookmark_manager_test"
      else
        connection = PG.connect :dbname => "bookmark_manager"
      end
      bookmarks_add = connection.exec "INSERT INTO bookmarks (url, title) VALUES ('#{new_url}', '#{new_title}');"
    rescue PG::Error => e
      puts e.message
    ensure
      bookmarks_add.clear if bookmarks_add
      connection.close if connection
    end
  end
end

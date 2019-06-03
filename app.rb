require 'sinatra/base'
# How come I don't need to require bookmark here?
class BookmarkManager < Sinatra::Base
  get '/' do 
    'Hello World'
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.all
    erb :index
  end
  run! if app_file == $0
end

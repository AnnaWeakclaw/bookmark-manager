require 'sinatra/base'
require './lib/bookmark'
# How come I don't need to require bookmark here?
class BookmarkManager < Sinatra::Base
  get '/' do 
    'Hello World'
  end

  get '/bookmarks' do 
    @new_bookmark_class = Bookmark.create
    @bookmarks = Bookmark.instance.all
    erb :index
  end

  post '/bookmarks-add' do 
    @new_bookmark = Bookmark.instance
    @new_bookmark.add(params[:new_url], params[:new_title])
    redirect "/bookmarks"
  end

  run! if app_file == $0
end

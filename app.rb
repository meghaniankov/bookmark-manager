require 'sinatra/base'
require './lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end

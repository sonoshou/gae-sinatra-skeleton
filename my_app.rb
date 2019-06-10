require 'bundler'
require 'sinatra/base'
require 'sinatra/reloader'
Bundler.require

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @title = "Title Test"
    @nav = 'home'
    haml :home
  end

  get '/table' do
    @title = "Table Test"
    @nav = 'table'
    haml :table
  end

  get '/story' do
    @title = "Story Test"
    @nav = 'story'
    haml :story
  end

end


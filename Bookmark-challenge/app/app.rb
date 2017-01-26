ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative './models/link'
require_relative './models/tags'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    Tag.create(tags: params[:tags])
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

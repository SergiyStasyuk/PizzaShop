#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
set :database, {adapter: "sqlite3", database: "foo.sqlite3"}

#set :database, "sqlite3:pizzashop.db"

class Product < Sinatra::Base
	register Sinatra::ActiveRecordExtension
end

get '/' do
	erb :index
end

get '/about' do
  erb :about
end
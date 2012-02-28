#!/usr/bin/env ruby

require 'sinatra'
require 'haml'
require 'active_record'

class SinatraApp < Sinatra::Base
  configure do
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'database.sqlite3', pool: 4, timeout: 240, wait_timeout: 0.24)
  end

  get '/' do
    haml :home
  end

  get '/foods' do
    haml :foods
  end
end

run SinatraApp

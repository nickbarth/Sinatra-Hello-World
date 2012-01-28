#!/usr/bin/env ruby

require 'sinatra'
require 'active_record'

class SarahsApp < Sinatra::Base
  configure do
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'database.sqlite3', pool: 4, timeout: 240, wait_timeout: 0.24)
  end

  get '/' do
    erb :home
  end

  get '/foods' do
    erb :foods
  end
end

run SarahsApp

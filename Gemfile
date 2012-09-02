source :rubygems

ruby '1.9.3', engine: 'ruby', engine_version: '1.9.3' if not defined? JRUBY_VERSION
ruby '1.9.3', engine: 'jruby', engine_version: '1.7.0.preview2' if defined? JRUBY_VERSION

platforms :ruby do
  gem 'thin'
  gem 'sqlite3'
end

platforms :jruby do
  gem 'puma'
  gem 'activerecord-jdbcsqlite3-adapter'
end

gem 'sinatra'
gem 'activerecord'
gem 'haml'
gem 'sass'

require 'bundler/setup'
Bundler.require

require 'sinatra/activerecord'

require 'rake'
# require 'yaml/store'
# require 'ostruct'
# require 'date'
# require 'open-uri'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../app/concerns", "*.rb")].each {|f| require f}

ActiveRecord::Base.establish_connection(
 :adapter => "sqlite3",
 :database => "db/clock_project.sqlite3"
)
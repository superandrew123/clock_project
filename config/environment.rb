require 'bundler/setup'
Bundler.require

require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'
require 'open-uri'

require_relative "../app/concerns/tweet_grabber"
require_relative "../app/concerns/clock.rb"
require_relative "../app/concerns/wiki_scraper.rb"
require_relative "../app/concerns/gracehoppertime.rb"

DBNAME = "set_db_name"

DBRegistry[ENV["ACTIVE_RECORD_ENV"]].connect!
DB = ActiveRecord::Base.connection

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

RAKE_APP ||= begin
  app = Rake.application
  app.init
  app.load_rakefile
  app
end
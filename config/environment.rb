require 'bundler/setup'
require 'open-uri'

Bundler.require

require_relative "../app/concerns/tweet_grabber"
require_relative "../app/concerns/clock.rb"
require_relative "../app/concerns/wikipedia_scraper.rb"
require_relative "../app/concerns/gracehoppertime.rb"

require './config/environment.rb'
require 'pry'
# Create an array of individuals.
amazing_women = ["Grace Hopper", "Ada Lovelace", "Sandi Metz"] # To grow eventually.

amazing_women.each do |woman|
  w = Individual.create(name: woman)
  # Scrape bio source and add to Individual row.
  w.bio = WikiScraper.new.scrape_bio(woman)

  # Scrape Twitter and collect tweets as Tweets in database.
  tweets = []
  tweets = TweetGrabber.new.populate(woman)
  tweets.each do |t|
    Tweet.create(body: t.text, individual_id: w.id)
  end

  # Scrape quote source and collect as Quotes in database.
end
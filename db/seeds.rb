require './config/environment.rb'
require 'pry'
# Create an array of individuals.
amazing_women = ["Grace Hopper", "Ada Lovelace"] # To grow eventually.

amazing_women.each do |woman|
  w = Individual.create(name: woman)
  # Scrape bio source and add to Individual row.
  w.bio = WikiScraper.new.scrape_bio(w.name)

  # Scrape Twitter and collect tweets as Tweets in database.
  tweets = []
  tweets = TweetGrabber.new.populate(w.name)
  tweets.each do |t|
    Tweet.create(body: t.text, individual_id: w.id)
  end

  # Scrape quote source and collect as Quotes in database.
  quotes = []
  quotes = WikiScraper.new.scrape_quotes(w.name)
  quotes.each do |q|
    Quote.create(body: q, source: "WikiQuotes", individual_id: w.id)
  end
end
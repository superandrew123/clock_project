require_relative '../../config/environment.rb'

class TweetGrabber


  attr_accessor :search_term, :all

  # FOR REST CLIENT (APP ONLY) CONFIGURATION ----- PLEASE DO NOT USE!!!
  CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key        = "e24BRt5RyNT0HWwXZYNemgXoO"
  config.consumer_secret     = "my5zRI30lGUm7MIGHglHzYqqUnKdc89U1RqFq38eyYhIK7C603"
  end

  def initialize(search_term)
    @client = CLIENT
    @search_term = search_term
    @all = []
  end

  def tweets(type = "mixed")
    CLIENT.search(self.search_term, result_type: type, lang: "en").take(100).each do |tweet| 
      self.all << tweet.text.split('http').first.strip
    end
  end

  def top(num=1)
    self.all[0..num]
  end

  def random
    [self.all[rand(self.all.size)]]
  end

end


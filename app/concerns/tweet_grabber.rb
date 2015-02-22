class TweetGrabber

  attr_accessor :all

  # REST CLIENT CONFIGURATION ----- PLEASE USE CAREFULLY SO I DONT GET BANNED!!!
  CLIENT = Twitter::REST::Client.new do |config|
    config.consumer_key        = "e24BRt5RyNT0HWwXZYNemgXoO"
    config.consumer_secret     = "my5zRI30lGUm7MIGHglHzYqqUnKdc89U1RqFq38eyYhIK7C603"
  end

  def initialize
    @client = CLIENT
    @all = []
  end

  def populate(type = "mixed", search_terms)
    search_terms.each do |term|
      CLIENT.search(term, result_type: type, lang: "en").take(10).each do |tweet| 
        self.all << tweet.text.split('http').first.strip
      end
    end
  end

  def top(num=1)
    self.all[0..num]
  end

  def random
    puts self.all[rand(self.all.size)]
  end

  def pluck(num)
    self.all[num]
  end     

end

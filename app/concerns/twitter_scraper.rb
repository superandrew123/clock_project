require 'twitter'
require 'pry'


# FOR STREAMING CLIENT CONFIGURATION
# client = Twitter::Streaming::Client.new do |config|
#   config.consumer_key        = "e24BRt5RyNT0HWwXZYNemgXoO"
#   config.consumer_secret     = "my5zRI30lGUm7MIGHglHzYqqUnKdc89U1RqFq38eyYhIK7C603"
#   config.access_token        = "99570016-nOgnXlrgrGoAqJQp8EhOymwHq8LkXE4NnyeK7ofVc"
#   config.access_token_secret = "BP0izEuAZDEK5x6cPCEDOAwLLlQ0a3yCTDC2AEKzv5WqN"
# end




client.search("grace hopper", result_type: "mixed").take(3).each do |tweet|
  puts tweet.text
end

class TwitterScraper

  # FOR REST CLIENT (APP ONLY) CONFIGURATION

  CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key        = "e24BRt5RyNT0HWwXZYNemgXoO"
  config.consumer_secret     = "my5zRI30lGUm7MIGHglHzYqqUnKdc89U1RqFq38eyYhIK7C603"
  end

  def initialize
    @client = CLIENT 
  end



end
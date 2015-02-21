require 'wikipedia'
require 'open-uri'
require 'json'
# require 'Nokogiri'
require 'pry'

BASE_URL = "http://en.wikipedia.org/w/api.php?format=json&action=query&titles="

def get_url(name)
  "#{BASE_URL}#{name.gsub(' ', '%20')}&prop=revisions&rvprop=content"
end

def get_json(url)
  JSON.load(open(url))
end

def wiki_quote(name)
  url = get_url(name)
  quote_hash = get_json(url)
binding.pry
end

wiki_quote("Grace Hopper")
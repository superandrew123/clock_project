require 'pry'
require 'nokogiri'
require 'open-uri'

def scrape_wikiquote(name)
  html = open("https://en.wikiquote.org/wiki/"+"#{name.gsub(" ", "_")}")
  data = Nokogiri::HTML(html)

  intro = data.css("div#mw-content-text p:nth-child(2)").text
  quotes = data.css("div#mw-content-text ul li b").collect{|q| q.text.strip}

  puts name.upcase
  puts "\n"
  puts intro
  puts "\n"
  puts "\"#{quotes.sample}\" - #{name}"
end

scrape_wikiquote("Grace Hopper")
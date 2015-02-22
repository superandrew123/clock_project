class WikiScraper

  attr_accessor :all

  def initialize
    @all = Hash.new { |h, k| h[k] = [] }
  end

  def scrape(names)
    names.each do |name|
      html = open("https://en.wikiquote.org/wiki/"+"#{name.gsub(" ", "_")}")
      data = Nokogiri::HTML(html)

      # intro = data.css("div#mw-content-text p:nth-child(2)").text
      @all[name] = data.css("div#mw-content-text ul li b").collect{|q| q.text.strip}
    end

    # puts name.upcase
    # puts "\n"
    # puts intro
    # puts "\n"
    # puts "\"#{quotes.sample}\" - #{name}"
  end

  def random(name)
    puts "\"#{self.all[name][rand(self.all.size)]}\" - #{name}"
  end

end

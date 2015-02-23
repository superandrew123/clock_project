class WikiScraper

  attr_accessor :all, :intros

  def initialize
    @all = Hash.new { |h, k| h[k] = [] }
    @intros = Hash.new {|h, k| h[k] = []}
  end

  def scrape(names)
    names.each do |name|
      html = open("https://en.wikiquote.org/wiki/"+"#{name.gsub(" ", "_")}")
      data = Nokogiri::HTML(html)

      # intro = data.css("div#mw-content-text p:nth-child(2)").text
      @all[name] = data.css("div#mw-content-text ul li b").collect{|q| q.text.strip}
    end

    names.each do |name|
      html = open("https://en.wikiquote.org/wiki/"+"#{name.gsub(" ", "_")}")
      data = Nokogiri::HTML(html)

      @intros[name] = data.css("div#mw-content-text p:nth-child(2)").collect{|i| i.text.strip}
    end
  end

  def random(name)
    puts "\"#{self.all[name][rand(self.all.size)]}\" - #{name}"
  end

  def print_intro(name)
    puts "#{name.upcase}\n"
    puts "#{self.intros[name].first}"
  end
end

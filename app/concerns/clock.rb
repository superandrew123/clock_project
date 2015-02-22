class GraceClock

  def self.tick
    puts "/=========================\\"
    $stdout.write Time.now.strftime("|| %h %d       %S:%M:%H ||\n")
    puts "\\=========================/"
  end

  def self.tock
    puts "/=========================\\"
    $stdout.write Time.now.strftime("|| %h %d %H:%M:%S       ||\n")
    puts "\\=========================/"
  end
end

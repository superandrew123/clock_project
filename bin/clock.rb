class TickingClock
  def start
    i = 1
    loop do
      sleep 1.0
      system "clear"      
      
      i += 1

      if i % 2 == 0
        grace_clock
      else
        standard_clock
      end
    end
  end

  def grace_clock
    puts "/=========================\\"
    $stdout.write Time.now.strftime("|| %h %d       %S:%M:%H ||\n")
    puts "\\=========================/"
  end

  def standard_clock
    puts "/=========================\\"
    $stdout.write Time.now.strftime("|| %h %d %H:%M:%S       ||\n")
    puts "\\=========================/"
  end
end

TickingClock.new.start

class TickingClock
  def self.start
    i = 0
    x = "butts"
    y = "TEST"
    loop do
      sleep 1.0
      $stdout.write Time.now.strftime("\r#{x} #{y}       %h %d %H:%M:%S       #{y} #{x}")
      i += 1
      if i % 2 == 0
        x = "BUTTS"
        y = "test"
      else
        x = "butts"
        y = "TEST"
      end
    end
  end
end

TickingClock.start

class GraceHopperTime

  def call
    GraceHopperTime.new
  end

  def initialize
    @tweets = TweetGrabber.new
    @tweets.populate('mixed', ['grace hopper', 'anita borg', 'sandi metz', 'ada lovelace', 'katherine johnson'])
    start
  end

  def start
    i = 1
    loop do
      sleep 1.5
      system "clear"
      i += 1
      if i % 2 == 0
        GraceClock.tick
        puts @tweets.random
      else
        GraceClock.tock
      end
    end
  end

end
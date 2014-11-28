module ActsAsHasselhoff
  class PutsSlowly
    attr_reader :strang

    def initialize(strang)
      @strang = strang
    end

    def run(speed = 5.0)
      thr = Thread.new do
        @strang.length.times do |i|
          print "\r#{@strang[0..i]}"
          sleep(rand / speed)
          STDOUT.flush
        end
      end
      thr.run
    end
  end
end

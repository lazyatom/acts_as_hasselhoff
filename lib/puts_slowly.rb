def puts_slowly(str, speed=5.0)
  (str).length.times { |i|
    print str.slice(i,1)
    sleep(rand/speed)
    STDOUT.flush
  }
  # str.split.each { |word|
  #   print word + " "
  #   sleep(rand/4.0)
  #   STDOUT.flush
  # }
  puts
end
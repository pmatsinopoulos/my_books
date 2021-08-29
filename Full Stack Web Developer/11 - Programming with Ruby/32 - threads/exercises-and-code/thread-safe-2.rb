# File: thread-safe-2.rb
#
puts "Process starting: #{Process.pid}"
counter = 0
threads = []
mutex = Mutex.new

10.times do |i|
  threads << Thread.new do
    5.times do
      mutex.synchronize do
        print '.'
        sleep (1..3).to_a.sample
        temp = counter

        sleep (1..3).to_a.sample
        temp += 1

        sleep (1..3).to_a.sample
        counter = temp
      end
    end
  end
end

threads.each do |thread|
  thread.join
end

puts counter # expected to be 50 (10 threads X 5 increases each)


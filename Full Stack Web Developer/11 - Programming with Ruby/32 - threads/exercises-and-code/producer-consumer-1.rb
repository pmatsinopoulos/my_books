# File: producer-consumer-1.rb
#
bottles_of_milk = []
NUMBER_OF_BOTTLES_TO_PRODUCE = 10
access_to_bottles = Mutex.new

producer = Thread.new do
  NUMBER_OF_BOTTLES_TO_PRODUCE.times do
    puts 'Producer: about to produce some milk...'

    sleep (1..5).to_a.sample # simulate production of milk

    access_to_bottles.synchronize do
      bottles_of_milk.push(1) # put milk into the consumption queue
    end

    puts 'Producer: milk produced.'
  end
end

consumer = Thread.new do
  number_of_bottles_consumed = 0
  while number_of_bottles_consumed < NUMBER_OF_BOTTLES_TO_PRODUCE
    puts "Consumer: number of bottles consumed so far: #{number_of_bottles_consumed}"

    access_to_bottles.synchronize do
      if bottles_of_milk.size >= 1
        puts 'Consumer: there is one more milk to consume...'

        sleep (1..3).to_a.sample # simulate consumption of milk

        bottles_of_milk.shift # get milk out of the queue

        puts 'Consumer: milk consumed.'
        number_of_bottles_consumed += 1
      end
    end
  end
end

loop do
  puts "Watcher: ... let's see current number of bottles ..."
  puts "Number of bottles: #{access_to_bottles.synchronize { bottles_of_milk.size }}"
  sleep 3
end

